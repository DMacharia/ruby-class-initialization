require "pry"
class Album
    GENRES = ["Hip-Hop", "Pop", "Jazz", "Gospel"]

    @@album_count = 0

    def initialize (genre)
        if GENRES.include?(genre)
        @@album_count += 1
        end
    end
 
    def self.count
        @@album_count 
    end
end

sinach = Album.new("Gospel") 
frank = Album.new("Jazz")
eben = Album.new("Pop")
joepraizer = Album.new("Hip-Hop")

binding.pry