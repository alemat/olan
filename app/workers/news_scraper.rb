class NewsScraper
  def self.scrap_news
    Medium.all.each do |m|
      link_prefix = m.link_prefix
      image_prefix = m.image_prefix
      url = m.url
      doc = Nokogiri::HTML(open(url))
      doc.css("#{m.main_container}").each do |n|
        headline = n.css("#{m.headline_container}").text.strip
        if News.find_by_headline(headline).blank?
          intro_text = n.css("#{m.introtext_container}").text.strip
          link_url = n.at_css("#{m.link_container}")[:href]
          image_url = n.at_css("#{m.image_url_container}")[:src]
          link_url = link_prefix + link_url unless link_prefix.blank?
          image_url = image_prefix + image_url unless image_prefix.blank?
          news = m.news.build(headline: headline, intro_text: intro_text, link: link_url, image_url: image_url,status: true)
          news.save
        end
      end
    end
  end
end

