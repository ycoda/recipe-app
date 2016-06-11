class ChangeColumnNotNullToUserPanels < ActiveRecord::Migration
  def change
    #. not nullを許可する
      change_column :user_panels, :title, :string, null: true
      change_column :user_panels, :ingredient, :string, null: true
      change_column :user_panels, :seasoning, :string, null: true
  end
end
