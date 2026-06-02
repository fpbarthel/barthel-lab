# Liquid filter: auto-link the first occurrence of each team member's first
# name in a block of rendered HTML (typically a post body). Subsequent
# mentions are left as plain text. Matches inside an existing <a>...</a> are
# skipped so we never nest links.
#
# First-name derivation: uses the first whitespace-delimited token of the
# team member's `title`. If that token is a 1-2 character initial (e.g. the
# "T." in "T. Rhyker Ranallo-Benavidez"), the next token is used instead.
#
# Usage in templates:
#   {{ content | link_member_names }}

module Jekyll
  module LinkMemberNamesFilter
    def link_member_names(input)
      return input if input.nil?
      site = @context.registers[:site]

      members = (site.categories['team'] || []).map do |m|
        title = (m.data['title'] || '').to_s.strip
        next nil if title.empty?
        parts = title.split(/\s+/)
        next nil if parts.empty?
        first = parts.first
        if parts.length >= 2 && first.gsub(/[\.\-]/, '').length <= 2
          first = parts[1]
        end
        next nil if first.nil? || first.empty?
        { first: first, url: m.url }
      end.compact

      linked = {}
      output = +''
      depth_a = 0

      input.to_s.scan(/<[^>]+>|[^<]+/).each do |chunk|
        if chunk.start_with?('<')
          output << chunk
          if chunk =~ /\A<a\b/i
            depth_a += 1
          elsif chunk =~ /\A<\/a>/i
            depth_a -= 1 if depth_a > 0
          end
        else
          if depth_a > 0
            output << chunk
          else
            members.each do |m|
              next if linked[m[:url]]
              pattern = /\b#{Regexp.escape(m[:first])}\b/
              chunk = chunk.sub(pattern) do |match|
                linked[m[:url]] = true
                %(<a class="off" href="#{m[:url]}">#{match}</a>)
              end
            end
            output << chunk
          end
        end
      end

      output
    end
  end
end

Liquid::Template.register_filter(Jekyll::LinkMemberNamesFilter)
