class UpcomingGames::CLI

  def call
    choose_platform
    create_games
    list_games
    menu
    goodbye
  end

  def choose_platform
    puts "Please choose game platform: PC, PS4, Xbox-One:"
    @input = gets.strip.downcase
  end

  def create_games
      games_array = UpcomingGames::Scraper.scrape_upcoming_list
      UpcomingGames::Game.create_from_collection(games_array)
  end

  def add_description(game)
    game.description = UpcomingGames::Scraper.scrape_description(game.url)
  end

  def list_games(index = 1..10)
    puts "Ten Upcoming PC Games"
    @games = UpcomingGames::Game.all
    @games[index].each.with_index(index.min){|game, i| puts "#{i}. #{game.title} - #{game.genre} - #{game.publisher} - #{game.release_date}"}
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter number for game you want more information on, type next for next 10 games, or type exit:"
      input = gets.strip.downcase

      if input.to_i > 0
        add_description(@games[input.to_i])
        puts @games[input.to_i].description
      elsif input == "list"
        list_games
      elsif input == "next"
        list_games(11..20)
      elsif input == "exit"

      else
        puts "Type list, exit, or number of game for description."
      end
    end
  end

  def goodbye
    puts "Check back soon for the newest game releases."
  end

end
