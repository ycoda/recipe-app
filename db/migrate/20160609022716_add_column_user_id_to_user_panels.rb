class AddColumnUserIdToUserPanels < ActiveRecord::Migration
  def change
    add_column :user_panels, :user_id, :integer
  end
end
