class AddPictureToUserPanels < ActiveRecord::Migration
  def change
    add_column :user_panels, :picture, :string
  end
end
