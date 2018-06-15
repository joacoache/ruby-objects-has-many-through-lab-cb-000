class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist, genre)
    @@all << self
    @name = name
    @artist = artist
    @genre = genre
  end

  def genre
    
  end

  def artist
  end

  def self.all
    @@all
  end

end