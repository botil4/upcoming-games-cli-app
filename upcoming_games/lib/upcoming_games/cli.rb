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

  def list_games(index = 1..10)
    puts "Ten Upcoming PC Games"
    @games = UpcomingGames::Game.all
    @games[index].each.with_index(index.min){|game, i| puts "#{i}. #{game.title} - #{game.genre} - #{game.publisher} - #{game.release_date}"}
  end

  def menu
    puts "Enter number for game you want more information on or type exit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase

      if input.to_i > 0
        puts @games[input.to_i-1]
      elsif input == "list"
        list_games
      elsif input == "next"
        list_games(11..20)
      else
        puts "Type list, exit, or number of game for description."
      end
    end
  end

  def goodbye
    puts "Check back soon for the newest game releases."
  end

end
