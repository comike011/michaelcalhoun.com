class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title, :null => false
      t.text :body, :null => false
      t.integer :admin_user_id, :null => false 
      t.timestamps
    end
  end
end
