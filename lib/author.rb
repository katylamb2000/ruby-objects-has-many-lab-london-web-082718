class Author
  
  @@all = []
  
  
  
  attr_accessor :name, :post
  
  def initialize (name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def name
    @name
  end
  
#   @songs << song
# song.artist = self
  
  def posts
    @posts = []
    @posts << post
    @@all << post
    post.Author = self
#     @songs << song
# song.artist = self
    
    # posts << Author.self
    # Posts.all.select { |post| post.author == self}
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end
  
  def self.post_count
    Post.all.count
  end
    
  
end