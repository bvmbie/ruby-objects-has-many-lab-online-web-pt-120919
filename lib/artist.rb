
class Artist
  attr_accessor :name, :songs

  #@@song_count = 0

  def initialize(name)
    @name = name
    #@songs = []
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def add_song(song)
    song.artist = self
    #self.songs << song
    #@@song_count =+ 1
  end
  
  def add_song_by_name(song_name)
    singer = Song.new(song_name)
    add_song(singer)
    
    #song = Song.new(name)
    #add_song(song)
    #self.songs << song
    #@@song_count =+ 1
  end

 

  def self.song_count
    Song.all.count
  end
end
