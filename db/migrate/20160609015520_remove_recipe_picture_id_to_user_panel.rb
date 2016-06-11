class RemoveRecipePictureIdToUserPanel < ActiveRecord::Migration
  def change
    remove_column :user_panels, :recipe_picture_id
  end
end
