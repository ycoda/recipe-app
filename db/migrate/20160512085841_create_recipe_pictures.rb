class CreateRecipePictures < ActiveRecord::Migration
  def change
    create_table :recipe_pictures do |t|
      t.string :picture_name

      t.timestamps
    end
  end
end
