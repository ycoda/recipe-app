class CreateBasicRecipes < ActiveRecord::Migration
  def change
    create_table :basic_recipes do |t|
      t.string :title
      t.string :ingredient
      t.string :seasoning

      t.timestamps
    end
  end
end
