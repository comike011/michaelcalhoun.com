class BlogPost < ActiveRecord::Base
  attr_accessible :title, :body
  validates_presence_of :title
  self.per_page = 10
end
