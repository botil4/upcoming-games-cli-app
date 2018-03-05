class UpcomingGames::Game

  attr_accessor :title, :genre, :publisher, :release_date, :url

  @@all = []

  def initialize
    @@all << self
  end

  def create_from_collection(games_array)
    games_array.each{|game| Game.new(game)}
  end

  def self.all
    puts <<-DOC.gsub /^\s*/, ''
    1. Super Seducer - Simulation - Red Dahlia Interactive - March 6, 2018
    2. Final Fantasy XV - Action, RPG - Square Enix - March 6, 2018
    3. Fear Effect Sedna - Action, Adventure - Sushee - March 6, 2018
    DOC
    # @@all
  end

end