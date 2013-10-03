class RemoveAdminUserIdFromPages < ActiveRecord::Migration
  def up
    remove_column :pages, :admin_user_id
  end
end
