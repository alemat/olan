require 'open-uri'

class HomeController < ApplicationController
  def index
    bbc_url = 'http://amharic.voanews.com/z/3661'
    bbc_doc = Nokogiri::HTML(open(bbc_url))
    @bbc_news = []
    bbc_doc.css('.size-3 , .col-xs-vertical').each do |news|
      @bbc_news << news.at_css('a')[:href]
  end
  end

  def calculator
    
  end

end
