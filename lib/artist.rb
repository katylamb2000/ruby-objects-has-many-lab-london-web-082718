class Artist
  
  attr_accessor :name, :song
  
  @@all =[]
  
  def initialize (name)
    @name = name
    @songs = []
    # @@all << self
    
  def name
    @name
  end
  
  def songs
    @songs
  end
  
  def add_song (song)
    @songs << song
    @@all << song
    song.artist = self
  end
end
  
  def add_song_by_name (name)
    song = Song.new(name)
    @songs << song
    @@all << name
    song.artist = self
end
    
 
  
  # class Artist
# ...
 
# def add_song_by_name(name, genre)
#   song = Song.new(name, genre)
#   @songs << song
#   song.artist = self
# end
  
  def self.song_count
    @@all.length
  end
end