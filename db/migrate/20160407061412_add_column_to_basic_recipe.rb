class AddColumnToBasicRecipe < ActiveRecord::Migration
  def change
    add_column :basic_recipes, :user_id, :integer
  end
end
