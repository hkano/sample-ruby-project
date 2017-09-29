# frozen_string_literal: true

module Sample
  class Crawler

    def initialize(url)
      @url = url.presence
    end

    def execute
      return if @url.nil?
      return unless @url.start_with?("http://") || @url.start_with?("https://")
      puts "URL: #{@url}"
      html = read_html(@url)
      return if html.blank?
      crawl(html)
    end

    private

    def read_html(url)
      begin
        open(url) { |f| f.read }
      rescue => e
        puts "error: #{e}"
      end
    end

    def crawl(html)
      doc = Nokogiri::HTML.parse(html)
      puts_title(doc)
      puts_meta(doc)
      puts_h1(doc)
      puts_h2(doc)
    end

    def puts_title(doc)
      doc.xpath('//title').each do |node|
        puts "title: #{node.content}"
      end
    end

    def puts_meta(doc)
      doc.xpath('//meta/@content').each do |node|
        puts "meta: #{node.value}"
      end
    end

    def puts_h1(doc)
      doc.xpath('//h1').each do |node|
        puts "h1: #{node.content}"
      end
    end

    def puts_h2(doc)
      doc.xpath('//h2').each do |node|
        puts "h2: #{node.content}"
      end
    end

  end
end
