class Author
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    def posts
        authors_posts = Post.all.find_all do |post|
             post.author == self
        end

    end

    def add_post(title)
        title.author = self
    end

    def add_post_by_title(post_name)
       new_post = Post.new(post_name)
       new_post.author = self
    end
    def self.post_count
        Post.all.count
    end
end