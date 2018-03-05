class UpcomingGames::Game

  attr_accessor :title, :genre, :publisher, :release_date, :url, :description

  @@all = []

  def initialize(game_hash)
    game_hash.each{|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def self.create_from_collection(games_array)
    games_array.each{|game| UpcomingGames::Game.new(game)}
  end

  def self.all
    @@all
  end

end
