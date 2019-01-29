class Artist
  attr_accessor :name

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

  def new_song(name, genre)
    Song.new(name, self, genre)
    # @genres << genre
    # @songs << song
  end
end
