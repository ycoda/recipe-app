class UserPanel < ActiveRecord::Base


  belongs_to :user #, foreign_key: "user_id"
  #belongs_to :recipe_picture
  validates :user_id, presence: true
  # validates  uniqueness: true do |u|
  #   u.title
  #   u.ingredient
  #   u.seasoning
  #   u.user_id
  #   u.created_at
  #   u.updated_at
  # end
  mount_uploader :picture, PictureUploader

  # has_many :relationships , foreign_key: "user_id"#, dependent: :destroy
  # # dependent 従属関係の、奴隷
  # has_many :users, through: :relationships

  #default_scope -> { order('created_at DESC') }



end
