# Liquid filter that wraps author names in <a> links to their team page
# when the author matches a current or past lab member.
#
# Usage in templates:
#   {{ page.authors | link_authors }}
#
# Member matching:
#   - Each team post (team/_posts/*.md) is indexed by its `title:` (display
#     name like "Floris Barthel"). Optional `aliases:` list in front-matter
#     can supply additional name forms.
#   - Author strings are split by comma, markers (* † ‡ § ¶ #) stripped,
#     then matched in two passes:
#       1. Exact normalized alias match.
#       2. Last-name + first-initial heuristic, handling both
#          "Floris P Barthel" and NLM-style "Barthel FP".

require 'cgi'

module Jekyll
  module LinkAuthorsFilter
    MARKER_RE = /[†‡§¶\*\#]/

    def link_authors(authors_str)
      return '' if authors_str.nil? || authors_str.to_s.strip.empty?

      site = @context.registers[:site]
      members = build_member_index(site.categories['team'] || [])

      authors_str.to_s.split(/,\s*/).reject(&:empty?).map do |author|
        member = match_member(author, members)
        if member
          %(<a href="#{member[:url]}">#{CGI.escapeHTML(author)}</a>)
        else
          CGI.escapeHTML(author)
        end
      end.join(', ')
    end

    # Reverse direction: given a member page (passed from a Liquid template as
    # a drop), return the list of publications in which they appear as an
    # author. Iterates `site.categories.publications` so order matches the
    # publications index (reverse-chronological by filename date).
    def publications_for_member(member_page)
      return [] if member_page.nil?
      site = @context.registers[:site]

      # The Liquid template passes a drop, not the underlying Document. Look
      # the Document up by URL so build_member_index can read its data.
      member_url = member_page.respond_to?(:[]) ? member_page['url'] : nil
      member_url ||= member_page.url if member_page.respond_to?(:url)
      return [] if member_url.nil?

      team_members = site.categories['team'] || []
      target_doc = team_members.find { |m| m.url == member_url }
      return [] if target_doc.nil?

      members = build_member_index([target_doc])
      return [] if members.empty?
      target = members.first

      publications = site.categories['publications'] || []
      publications.select do |pub|
        (pub.data['authors'] || '').to_s.split(/,\s*/).any? do |author|
          !match_member(author, [target]).nil?
        end
      end
    end

    private

    def build_member_index(member_posts)
      member_posts.map do |m|
        title = (m.data['title'] || '').to_s.strip
        next nil if title.empty?
        parts = title.split(/\s+/)
        next nil if parts.length < 2

        first = parts.first
        last_parts = parts[1..-1]
        # If title is "Initial. Given Family" (e.g., "T. Rhyker Ranallo-Benavidez"),
        # treat the given name as an alternate first-name for matching.
        middle = nil
        if parts.length >= 3 && first.gsub(/[\.\-]/, '').length <= 2
          middle = parts[1]
          last_parts = parts[2..-1]
        end

        aliases = (m.data['aliases'] || []).map { |a| normalize(a) }

        {
          url: m.url,
          first: first,
          middle: middle,
          last: last_parts.join(' '),
          last_word: last_parts.last,
          aliases: aliases,
        }
      end.compact
    end

    def normalize(s)
      s.to_s.gsub(MARKER_RE, '').strip.downcase
    end

    # Decide whether an author's first-name token is compatible with a
    # member's first-name token. Initials match by first letter; full first
    # names require a prefix relationship to avoid e.g. "Yining" → "Yi-An".
    def first_name_compatible?(author_first, member_first)
      return false if author_first.nil? || member_first.nil?
      a = author_first.gsub(/[\.\-]/, '').downcase
      m = member_first.gsub(/[\.\-]/, '').downcase
      return false if a.empty? || m.empty?
      return true if a == m
      # Treat 1–3 letter all-letter tokens as initials (covers "F", "FP", "FPB")
      a_init = a.match?(/^[a-z]{1,3}$/)
      m_init = m.match?(/^[a-z]$/)
      return a[0] == m[0] if a_init || m_init
      a.start_with?(m) || m.start_with?(a)
    end

    def match_member(author_str, members)
      norm = normalize(author_str)
      return nil if norm.empty?

      members.each { |m| return m if m[:aliases].include?(norm) }

      cleaned = author_str.gsub(MARKER_RE, '').strip
      parts = cleaned.split(/\s+/)
      return nil if parts.length < 2

      # NLM-style ("Barthel FP"): last token is uppercase initials
      if parts.last.match?(/^[A-Z]{1,3}\.?$/)
        author_last = parts[0..-2].join(' ')
        author_first = parts.last
      else
        author_last = parts[1..-1].join(' ')
        author_first = parts.first
      end
      a_last_lower = author_last.downcase

      members.each do |m|
        m_last = m[:last].downcase
        m_last_word = m[:last_word].downcase
        last_ok = (a_last_lower == m_last) ||
                  (a_last_lower.split(/\s+/).last == m_last_word)
        next unless last_ok
        next unless first_name_compatible?(author_first, m[:first]) ||
                    first_name_compatible?(author_first, m[:middle])
        return m
      end

      nil
    end
  end
end

Liquid::Template.register_filter(Jekyll::LinkAuthorsFilter)
