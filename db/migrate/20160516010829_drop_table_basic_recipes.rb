class DropTableBasicRecipes < ActiveRecord::Migration
  def change
    drop_table :basic_recipes
  end
end
