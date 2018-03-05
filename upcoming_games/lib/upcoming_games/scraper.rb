
class UpcomingGames::Scraper

  BASE_PATH = "http://www.ign.com/"

  def self.scrape_upcoming_list
    doc = Nokogiri::HTML(open(BASE_PATH + "upcoming/games/pc"))
    games = doc.css("div.clear.gameList-gameShort")
    games.collect do |game|
      {
        :title =>game.css("div.game-title h3 a").text.strip,
        :genre =>game.css("div.game-details strong").text.gsub(' ','').strip,
        :publisher =>game.css("div.publisher.grid_3").text.strip,
        :release_date =>game.css("div.releaseDate.grid_3.omega").text.strip,
        :url =>game.css("div.game-title h3 a").attribute("href").value
      }
    end
  end

  def self.scrape_description(url)
    doc = Nokogiri::HTML(open(BASE_PATH + url))
    doc.css("div.description").text
  end

end
