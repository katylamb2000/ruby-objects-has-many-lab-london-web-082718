class Author
  
  @@all = []

  attr_accessor :name, :post
  
  def initialize (name)
    @name = name
    @posts = []
  end
  
  def self.all
    @@all
  end
  
  def name
    @name
  end
  
  def posts
    @posts
  end
   
   def add_post (post)
    @posts << post
    @@all << post
    post.author = self
  end
  
  def add_post_by_title (title)
    post = Post.new (title)
    post.author = self
    @posts << post
    @@all << title
end
  
  # song = Song.new(name)
  #   @songs << song
  #   @@all << name
  #   song.artist = self
  
  def self.post_count
    Post.all.count
  end
  end
  