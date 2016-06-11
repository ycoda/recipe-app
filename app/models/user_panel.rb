class UserPanel < ActiveRecord::Base


  belongs_to :user #, foreign_key: "user_id"
  validates :user_id, presence: true

  mount_uploader :picture, PictureUploader

  # has_many :relationships , foreign_key: "user_id"#, dependent: :destroy
  # # dependent 従属関係の、奴隷
  # has_many :users, through: :relationships

  #default_scope -> { order('created_at DESC') }



end
