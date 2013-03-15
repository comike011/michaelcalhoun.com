require 'spec_helper'

describe BlogPostsController do
  describe "GET #index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all the blog posts into @blog_posts" do
      3.times do
        FactoryGirl.build(:blog_post)
      end
      get :index
      assigns(:blog_posts).count.should == BlogPost.all.count
    end
  end
  
  describe "GET #show" do
    let(:blog_post) { FactoryGirl.create(:blog_post) }
    
    it "loads the appropriate blog post based on id" do
      get :show, { :id => blog_post.id }
      assigns(:blog_post).should == blog_post
    end

    it "should render the show template" do
      get :show, { :id => blog_post.id } 
      expect(response).to render_template("show")
    end
  end
end
