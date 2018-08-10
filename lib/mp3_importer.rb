class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path #"./spec/fixtures/mp3s"
  end

  def files
    file_list = Dir.entries(path)
    file_list = file_list[2..file_list.length]
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end

  end
end
