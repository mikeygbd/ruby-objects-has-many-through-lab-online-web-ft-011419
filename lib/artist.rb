require 'pry'
class Artist
  attr_accessor :name, :genres

@@all = []

  def initialize(name)
    @name = name
    # @genres = []
    # @songs = []
    @@all << self
  end

  def self.all
  @@all
  end

  def songs
    Song.all.select  do |song|
      song.artist == self
    end
  end

  def genres
    Song.all.each do |song|
        song.genre == self
      # binding.pry
    end
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    # @genres << genre
    # @songs << song
  end
end
