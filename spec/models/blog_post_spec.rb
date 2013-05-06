require 'spec_helper'

describe BlogPost do

  it { should belong_to(:admin_user) }

  before(:each) do
    @post = FactoryGirl.build(:blog_post)
  end

end
