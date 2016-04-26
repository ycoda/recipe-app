class Relationship < ActiveRecord::Base
  belongs_to :user, class_name: "User"
  belongs_to :user_panel, class_name: "UserPanel"
  validates :user_id, presence: true
  validates :user_panel_id, presence: true

end
