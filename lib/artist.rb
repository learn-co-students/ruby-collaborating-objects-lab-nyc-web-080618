class Artist
  attr_accessor :name
  @@all=[]
  def initialize(name)
    @name=name
    @songs=[]
    self.save
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs<<song
  end

  def save
    @@all<<self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if self.all.find{|artist|artist.name==name}
      self.all.find{|artist|artist.name==name}
    else
      self.new(name)
    end
    
  end

  def print_songs
     self.songs.each {|song|puts song.name}
  end

end
