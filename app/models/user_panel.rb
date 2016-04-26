class UserPanel < ActiveRecord::Base


  #belongs_to :users, foreign_key: "id"


  has_many :relationships , foreign_key: "user_id", dependent: :destroy
  has_many :users, through: :relationships

  #default_scope -> { order('created_at DESC') }
  #validates :user_id, presence: true


end
