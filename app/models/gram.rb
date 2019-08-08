class Gram < ApplicationRecord
  validates :message, presence: true
  validates :picture, presence: true
  has_many :comments, dependent: :destroy
  
  mount_uploader :picture, PictureUploader
  belongs_to :user

end
