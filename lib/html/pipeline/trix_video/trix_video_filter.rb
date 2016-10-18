require "html/pipeline"

module HTML
  class Pipeline
    # HTML Filter for Trix-compliant video preview filters
    #
    class TrixVideoFilter < TextFilter
      def call
        text_fragment.css("figure").each do |figure|
          service, id = video_information(figure)

          case service
          when "youtube"
            figure.replace "https://youtube.com/watch?v=#{id}"
          when "vimeo"
            figure.replace "https://vimeo.com/#{id}"
          end
        end

        text_fragment.to_s
      end

      def video_information(figure)
        url = figure.css("img").first ? figure.css("img").first["src"] : nil

        if match = valid_id(url, youtube_regex)
          [ "youtube", match[1] ]
        elsif match = valid_id(url, vimeo_regex)
          [ "vimeo",   match[1] ]
        end
      end

      def valid_id(url, regex)
        return unless url
        url.match(regex)
      end

      def text_fragment
        @fragment ||= Nokogiri::HTML::DocumentFragment.parse(@text)
      end

      def youtube_regex
        /img.youtube.com\/vi\/(\S*)\/\d.jpg/
      end

      def vimeo_regex
        /i.vimeocdn.com\/video\/[0-9]*_[0-9]{3}x[0-9]{3}.jpg\?r=pad\?id=([0-9]*)/
      end

    end
  end
end
