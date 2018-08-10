class Song
  attr_accessor :name,:artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    Artist.find_or_create_by_name(name)
  end


  def self.new_by_filename(filename)
    file = filename.split(' - ')
    new_song = Song.new(file[1])
    new_song.artist_name = file[0]
    new_song.artist = Artist.all.find do |artist|
      artist.name == file[0]
    end
    new_song.artist.add_song(new_song)
    new_song
  end

end
