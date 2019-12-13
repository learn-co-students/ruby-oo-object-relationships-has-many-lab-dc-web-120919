require 'pry'
class Author
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def posts
        Post.all.select {|post| post.author == self}  
    end
    
    def add_post(post_name)
        post_name.author = self
    end

    def add_post_by_title(post_name)
        post = Post.new(post_name)
        post.author = self
    end

    def self.post_count
        Post.all.count
    end
end