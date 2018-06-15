class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song.self
  end

  def songs
    Song.all.select do |songs|
      songs.artist == self.name
    end
  end

  def genre
    songs.map do |song|
      song.genre
    end
  end

  def self.all
    @@all
  end

end
