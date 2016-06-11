class RemoveUserIdToUserPanel < ActiveRecord::Migration
  def change
    remove_column :user_panels, :user_id
  end
end
