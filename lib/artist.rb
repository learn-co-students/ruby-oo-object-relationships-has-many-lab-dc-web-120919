 require 'pry'
    class Artist

    attr_accessor :name

    def initialize(name)
        @name = name 
    end

    def songs 
        songs_array = Song.all.select do |song|
            song.artist == self
        end
    end
#  this should set an artist to a song
    def add_song(song)
        # binding.pry
        song.artist = self   
    end

    def add_song_by_name(title)
        song = Song.new(title)
        song.artist = self
    end

    def self.song_count
        Song.all.count
    end
end



    