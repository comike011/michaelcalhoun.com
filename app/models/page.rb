class Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :admin_user
  attr_accessible :body, :name
end
