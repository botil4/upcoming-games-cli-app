class UpcomingGames::Game

  attr_accessor :title, :genre, :publisher, :release_date, :url

  @@all = []

  def initialize(game_hash)
    game_hash.each{|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def self.create_from_collection(games_array)
    games_array.each{|game| UpcomingGames::Game.new(game)}
  end

  def self.all
    # puts <<-DOC.gsub /^\s*/, ''
    # 1. Super Seducer - Simulation - Red Dahlia Interactive - March 6, 2018
    # 2. Final Fantasy XV - Action, RPG - Square Enix - March 6, 2018
    # 3. Fear Effect Sedna - Action, Adventure - Sushee - March 6, 2018
    # DOC
    @@all
  end

end
