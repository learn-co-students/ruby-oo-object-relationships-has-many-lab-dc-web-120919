require "pry" 

class Song 

    attr_accessor :artist, :name 

    @@all = []

    def initialize(name = "none")

        
        @name = name 
        @@all << self 
    end 

    def self.all 

        return @@all 
    end 

    def name 

        return @name 
    end  

    def artist_name

        if artist #if song.artist exists 
            return self.artist.name 
        else
            return nil 
        end 
    end 
end 