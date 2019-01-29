class Genre
attr_accessor :name
@@all = []

  def initialize(name)
  @name = name
  # @songs = []
  # @artists = []
  @@all << self
  end

  def self.all
    @@all
  end


    def songs
      Song.all.select  do |song|
        song.genre == self
      end
    end


  def new_song(name, genre)
    Song.new(name, artist, self)

  end

end
