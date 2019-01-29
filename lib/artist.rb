class Artist
  attr_accessor :name, :genres, :songs

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
    song = Song.new(name, self, genre)
    # @genres << genre
    # @songs << song


  end
end
