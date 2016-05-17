class RenameRecipePicturesColumnToRecipePicture < ActiveRecord::Migration
  def change
    rename_column :user_panels, :recipe_pictures_id, :recipe_picture_id
  end
end
