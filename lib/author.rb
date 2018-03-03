class Author
  attr_accessor :name, :posts
  @@post_count=0

###########################
  def initialize(n)
    @@post_count += 1
    @name=n
    @posts = []
  end
  ###########################

  def posts
    @posts
  end
  ###########################
 def add_post(post)
   @posts << post
   post.author = self
 end
 ###########################
def add_post_by_title(title)
   post=Post.new(title)
   post.author=self

end
###########################
def post_count
  @@post_count
end
###########################

end
