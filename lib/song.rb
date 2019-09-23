class Song


    attr_accessor :name, :artist, :genre


    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []
    @@x = []
    @@y = []
    def initialize (name, artist, genre)
    
        @name = name
        @artist = artist
        @genre = genre
        @@count = @@count + 1
        @@artists << self.artist 
        @@genres << self.genre 
        @@x << self.artist 
        @@y << self.genre 
        @@all << self
    end

    def self.count 
        @@count
    end

    def self.genres 
        @@genres.uniq!
    end

    def self.artists 
        @@artists.uniq!
    end

    def self.artist_count 
        a =[]
        n = {}
 c = 0 
        a = self.artists
        #puts a
c = 0
 f = 0
 k = 0
 d = []
 while a[k]
        while @@x[c]
        if a[k] == @@x[c]
            f = f + 1
        end
        c = c + 1
    end
    puts a[k]
    k = k + 1
    d << (f/12.to_f).floor
    f = 0
    c = 0
end
n = {}
k = 0
while a[k]
    l = a[k]
    n[l] = d[k] 
    k = k + 1
end
n
end

    def self.genre_count 
        a =[]
        n = {}
 c = 0 
        a = self.genres
        #puts a
c = 0
 f = 0
 k = 0
 d = []
 while a[k]
        while @@y[c]
        if a[k] == @@y[c]
            f = f + 1
        end
        c = c + 1
    end
    puts a[k]
    k = k + 1
    d << (f/12.to_f).ceil
    f = 0
    c = 0
end
n = {}
k = 0
while a[k]
    l = a[k]
    n[l] = d[k] 
    k = k + 1
end
n
end

end
