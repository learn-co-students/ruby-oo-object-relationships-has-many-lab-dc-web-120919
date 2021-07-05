require "pry"
class Artist 

    attr_accessor :name 

    @@all = []

    def initialize(name="none")
        @name = name 
        @songs = []
        @@all << self 
    end 

    def self.all 
        
        return @@all 
    end 

    def songs 
        
        #goes through the entire songs list and looks for artist object 
        Song.all.select {|song| song.artist == self }
    end 

    def add_song(song)

        self.songs << song 
        song.artist = self
    end 

    def add_song_by_name(song_name)

        new_song = Song.new(song_name) 
        new_song.artist = self 
    end 

    def self.song_count 

        return Song.all.length 
    end 

end 