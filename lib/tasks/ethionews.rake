namespace :ethionews do
  desc "Scrap news from different sites"
  task scrap_news: :environment do
    NewsScraper.scrap_news
  end
end
