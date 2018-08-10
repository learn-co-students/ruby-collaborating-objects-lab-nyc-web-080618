class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end # end initialize

  def files
    @files = Dir[@path + "/*.mp3"].map do |file|
      # map through the files in Dir[@path]
      # and remove the @path
      file.gsub("#{@path}/", "")
    end
  end # end files

  def import
    files.each do |file|
      song = Song.new_by_filename(file)
    end
  end # import

end # end class MP3Importer
