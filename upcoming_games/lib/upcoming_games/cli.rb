class UpcomingGames::CLI

  def call
    create_games
    list_games
    menu
    goodbye
  end

  def create_games
      games_array = UpcomingGames::Scraper.scrape_upcoming_list
      UpcomingGames::Game.create_from_collection(games_array)
  end

  def list_games
    puts "Ten Upcoming PC Games"
    @games = UpcomingGames::Game.all
    @games.each.with_index(1){|game, i| puts "#{i}. #{game.title} - #{game.genre} - #{game.publisher} - #{game.release_date}"}
  end

  def menu
    puts "Enter number for game you want more information on:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Game 1 description"
      when "2"
        puts "Game 2 description"
      when "3"
        puts "Game 3 description"
      end
    end
  end

  def goodbye
    puts "Check back soon for the newest game releases."
  end

end
