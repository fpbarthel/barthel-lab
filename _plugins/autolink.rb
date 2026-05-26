# Liquid filter that wraps bare http(s):// URLs in <a> tags so plain URLs in
# post bodies (e.g. abstracts synced verbatim from Notion) render as
# clickable links. kramdown 2.x with input: GFM does not autolink bare URLs.
#
# Usage in templates:
#   {{ content | autolink_urls }}
#
# Skips URLs already inside an href="..." attribute (so existing markdown
# links and HTML <a> tags are left untouched).

module Jekyll
  module AutolinkFilter
    # Match http(s):// followed by any non-whitespace, non-tag characters.
    # We then strip trailing punctuation from the captured URL so the period
    # at the end of a sentence stays outside the link.
    URL_RE = %r{(?<![">'=])\b(https?://[^\s<>"']+)}

    TRAILING_PUNCT = ['.', ',', ';', ':', '!', '?', ')', ']'].freeze

    def autolink_urls(input)
      return input if input.nil?
      input.gsub(URL_RE) do
        url = Regexp.last_match(1)
        trailing = +""
        while TRAILING_PUNCT.include?(url[-1])
          trailing = url[-1] + trailing
          url = url[0...-1]
        end
        %(<a href="#{url}">#{url}</a>#{trailing})
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::AutolinkFilter)
