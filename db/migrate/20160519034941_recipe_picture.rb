class RecipePicture < ActiveRecord::Migration
  def change
    add_column :recipe_pictures, :picture_file, :binary
  end
end
