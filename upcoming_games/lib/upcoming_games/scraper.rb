
class UpcomingGames::Scraper

  def self.scrape_upcoming_list
    doc = Nokogiri::HTML(open("http://www.ign.com/upcoming/games/pc"))
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

end
