class Artist

  attr_accessor :name,:songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    Artist.all << self
  end

  def self.find_or_create_by_name(name)
    artist = all.find do |artist|
      artist.name == name
    end
    if artist == nil
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    else
      artist
    end
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
