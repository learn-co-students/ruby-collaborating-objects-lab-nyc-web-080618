require "pry"
class Song

attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def self.new_by_filename(file_name)
  #"Action Bronson - Larry Csonka - indie.mp3"
  #  artist's name     song's name    this is the file_name format made in the testing program
  name = file_name.split(" - ")
  song = self.new(name[1])
  song.artist = Artist.find_or_create_by_name(name[0])
  song.artist.add_song(song)
  song
end

end #end of class
