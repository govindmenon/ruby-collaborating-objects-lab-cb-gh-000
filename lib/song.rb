class Song
  attr_accessor :name,:artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    details = filename.split(/-|\./)
    song = Song.new(details[1].strip)
    artist = Artist.find_or_create_by_name(details[0].strip)
    song.artist = artist
    song
  end
end
