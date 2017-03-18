require 'pry'
class MP3Importer
  attr_reader :path
  
  def initialize(path)
    @path = path
  end

  def files
    arr = Dir[path+"/*.mp3"]
    arr.collect{|file| file.split("/").last}
  end

  def import
    files.collect do |file|
      a = Song.new_by_filename(file)
    end 
  end
end