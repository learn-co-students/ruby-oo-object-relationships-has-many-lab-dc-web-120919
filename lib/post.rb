class Post 

    attr_accessor :author, :title

    @@all = []

    def initialize(title = "none")

        @title = title 
        @@all << self 
    end 

    def self.all 

        return @@all
    end 

    def author_name 

        if author #if self.author exists
            return self.author.name 
        else
            return nil 
        end 
    end 

end 