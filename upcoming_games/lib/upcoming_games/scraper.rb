require 'open-uri'
require 'pry'

class UpcomingGames::Scraper

  def self.scrape_upcoming_list
    doc = Nokogiri::HTML(open(http://www.ign.com/upcoming/games/pc))
    games = doc.css("div.clear gameList-gameShort")
    binding.pry
  end

end
