class AdminUser < ActiveRecord::Base
  enable_as_typus_user
  has_many :blog_posts
  has_many :pages

  def full_name
    "#{first_name} #{last_name}"
  end
end
