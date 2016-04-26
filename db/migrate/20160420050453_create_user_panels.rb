class CreateUserPanels < ActiveRecord::Migration
  def change
    create_table :user_panels do |t|
      t.string :title
      t.string :ingredient
      t.string :seasoning
      t.integer :user_id

      t.timestamps
    end
  end
end
