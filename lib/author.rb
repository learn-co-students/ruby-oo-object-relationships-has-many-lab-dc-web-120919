
class Author 

    attr_reader :name 
    attr_writer 

    def initialize(name = "none")

        @name = name 
        @posts = []
    end 

    def posts 

        return Post.all.select {|post| post.author == self} 
    end 

    def add_post(post)

        post.author = self 
        post.author.posts << self 
    end 

    def add_post_by_title(title)

        post_new = Post.new(title)
        post_new.author = self 
    end 

    def self.post_count 

        return Post.all.length 
    end 

end 