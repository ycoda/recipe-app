class DropTableToRecipePictures < ActiveRecord::Migration
  def change
    drop_table :recipe_pictures
  end
end
