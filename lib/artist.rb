class Artist
  attr_accessor :songs, :name
  @@count = 0

  def initialize(name)
    @name = name
    @songs = []
    @@count += 1
  end

  def self.song_count
    @@count
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end
end
