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

    def add_post(post)
        post.author = self 
    end

    def add_post_by_title(title)
        #takes in an argument of a post title, creates a new post with it and associates the post and author 
        post = Post.new(title) #Post.new(post_title) takes in the argument of post_title and creates a new post,
        #then associates the new post with the author
        post.author = self
    end

    def self.post_count
        Post.all.count
    end


end