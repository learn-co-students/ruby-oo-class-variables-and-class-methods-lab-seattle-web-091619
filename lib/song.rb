class Song

@@all = []
@@count = 0
@@genres = []
@@artists = []



attr_accessor :name, :artist, :genre

def initialize(name,artist,genre)

@name = name
@artist = artist
@@artists << artist
@genre = genre
@@genres << genre
@@all << self
@@count += 1 

end

def self.count
    @@count
end

def self.genres
    @@genres.uniq
end

def self.artists
    @@artists.uniq
end

def self.artist_count
    hash = {}
    @@artists.each{|artist|
        hash[artist] = @@artists.count(artist)


}
        hash
end




def self.genre_count
    hash = {}
    @@genres.each{|genre|
        hash[genre] = @@genres.count(genre)


}
        hash
end

end
