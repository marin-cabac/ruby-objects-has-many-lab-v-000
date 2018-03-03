class Author
  attr_accessor :name, :post
  @@post_count=0

###########################
  def initialize(n)
    @@post_count += 1
    @name=n
    @posts_arr=[]
  end
  ###########################

  def posts
    @posts_arr
  end
  ###########################
 def add_post(post)
   @posts_arr << post
 end
 ###########################
def add_post_by_title(post_title)
  add_post(post_title)
  post_title.author = self
end
###########################
def post_count
  @@post_count
end
###########################
end
