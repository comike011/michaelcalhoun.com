class RemoveAdminUserIdFromBlogPosts < ActiveRecord::Migration
  def up
    remove_column :blog_posts, :admin_user_id
  end
end
