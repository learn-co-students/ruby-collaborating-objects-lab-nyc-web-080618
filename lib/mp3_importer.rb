class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end


  def files
    Dir.entries(self.path).select{|name|name.end_with?("mp3")}
  end

  # def files
  #   @files = Dir[@path + "/*.mp3"].map do |file|
  #     # map through the files in Dir[@path]
  #     # and remove the @path
  #     file.gsub("#{@path}/", "")
  #   end
  # end

  def import
    files.each do |file|
      song = Song.new_by_filename(file)
    end
  end


end #end of class
