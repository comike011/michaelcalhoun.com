class AddUserIdToPages < ActiveRecord::Migration
  def change
    add_column :pages, :admin_user_id, :integer
  end
end
