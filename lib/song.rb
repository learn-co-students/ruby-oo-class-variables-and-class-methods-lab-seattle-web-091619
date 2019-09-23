class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    @@g_count = {}
    @@a_count = {}
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end
    def self.artists
        @@artists.uniq!
    end
    def self.genres
        @@genres.uniq!
    end

    def self.genre_count
        @@genres.map{|g|
            if @@g_count.has_key?(g) == false
                @@g_count[g] = 1
            else 
                @@g_count[g] += 1
            end
        }
        @@g_count
    end
    def self.artist_count
        @@artists.map{|a|
            if @@a_count.has_key?(a) == false
                @@a_count[a] = 1
            else 
                @@a_count[a] += 1
            end
        }
        @@a_count
    end
end

puts Song.genre_count