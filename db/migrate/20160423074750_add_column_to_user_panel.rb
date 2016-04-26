class AddColumnToUserPanel < ActiveRecord::Migration
  def change
    add_column :user_panels, :image_url, :string
  end
end
