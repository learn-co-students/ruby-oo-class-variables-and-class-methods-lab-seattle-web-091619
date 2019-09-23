class Song
  attr_accessor :name, :artist, :genre, :count, :artists, :genres
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    @@genres.each do |value|
      if value == @@genres
        @@genre_count << value
      end
    end
  end
  
  ef self.artist_count
    
  end
  
end
song = Song.new("Beautiful Crazy", "Luke Combs", "Country")
puts song.artist

