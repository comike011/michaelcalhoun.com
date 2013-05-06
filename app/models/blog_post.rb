class BlogPost < ActiveRecord::Base
  attr_accessible :title, :body, :as => :admin
  belongs_to :admin_user
  validates_presence_of :title
end
