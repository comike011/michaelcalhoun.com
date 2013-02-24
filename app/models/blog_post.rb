class BlogPost < ActiveRecord::Base
  belongs_to :admin_user
  validates_presence_of :tite
  attr_accessible :title, :body
end
