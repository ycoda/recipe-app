class RenameImageUrlColumnToRecipePictures < ActiveRecord::Migration
  def change
    rename_column :user_panels, :image_url, :recipe_pictures_id
  end
end
