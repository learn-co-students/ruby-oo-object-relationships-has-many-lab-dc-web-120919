require 'pry'

class Post
    attr_accessor :author, :title
    @@all = []

    def initialize(post_name)
        @title = post_name
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        #binding.pry
        author.name if author
    end
    
end