class UpcomingGames::CLI

  def call
    list_games
    menu
    goodbye
  end

  def list_games
    puts "Ten Upcoming PC Games"
    puts <<-DOC.gsub /^\s*/, ''
    1. Super Seducer - Simulation - Red Dahlia Interactive - March 6, 2018
    2. Final Fantasy XV - Action, RPG - Square Enix - March 6, 2018
    3. Fear Effect Sedna - Action, Adventure - Sushee - March 6, 2018
    DOC
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
