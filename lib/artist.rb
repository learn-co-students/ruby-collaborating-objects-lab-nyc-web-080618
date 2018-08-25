class Artist

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
  @songs = []
end

def songs
  @songs
end

def add_song(song)
  @songs << song
end

def save
  @@all << self
end

def self.all
  @@all
end

def self.find_or_create_by_name(name)
  if Artist.all.find {|artist| artist.name == name} ##can't use "do |artist|" format
    Artist.all.find {|artist| artist.name == name}
  else
    Artist.new(name)
  end
end

def print_songs
  self.songs.each do |song|
    puts song.name
  end
end



end #end of class
