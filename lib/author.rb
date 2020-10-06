class Author

    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def posts
        Post.all.select do |indiv_post|
            indiv_post.author == self
            # binding.pry
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        self.add_post(post)
    end

    def self.post_count
       Post.all.count
    end

    def self.all 
        @@all
    end



end
