require 'pry'

class Song
    attr_accessor :artist, :name
    @@all = []

    def initialize(song_name)
        @name = song_name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        #binding.pry
        artist.name if artist
    end
    #self =>  #<Song:0x00007fabd516f138 @artist=#<Artist:0x00007fabd516efd0 @name="Drake">, @name="Survivor">
end

# These methods should use, or extend, the has many/belongs to relationship you're building out. If a song has an artist, you can call: some_song.artist and return an actual instance of the Artist class. Since every artist has a name, some_song.artist.name should return the name of the Artist instance associated with the given song. Your #artist_name method should utilize this relationship.

# Note: We like our code to be robust, i.e. not easily breakable. Make sure your #artist_name and #author_name methods will not break if the given song or post does not have an artist or author. In this case, your methods should return nil.