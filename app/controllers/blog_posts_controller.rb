class BlogPostsController < ApplicationController
  layout "blahg"

  def index
    #this is the index
    @blog_posts = BlogPost.all
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  end
end
