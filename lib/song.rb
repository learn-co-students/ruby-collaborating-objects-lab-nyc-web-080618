require 'pry'

class Song
  attr_accessor :name, :artist
  attr_reader :artist_name

  def initialize(name)
    @name = name
  end # initialize

  def self.new_by_filename(filename)
    song_info = filename.split(" - ")
    new_song = Song.new(song_info[1])
    new_song.artist_name = song_info[0]
    new_song
  end # self.new_by_filename

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    if !artist.nil?
      artist.add_song(self)
      self.artist = artist
      artist
    end
  end # artist_name=

end
