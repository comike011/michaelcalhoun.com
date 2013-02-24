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
end
