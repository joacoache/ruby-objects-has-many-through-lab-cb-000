class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def new_song(name, genre)
    song = Song.new(name, genre)
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
