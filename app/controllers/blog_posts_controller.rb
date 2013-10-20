class BlogPostsController < ApplicationController

  def index
    #@blog_posts = BlogPost.all
    @blog_posts = BlogPost.paginate(page: params[:page], order: "created_at DESC")
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  end
end
