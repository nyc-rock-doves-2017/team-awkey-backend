class Photo < ApplicationRecord
  has_many :comments
  has_many :likes
  mount_uploader :photo, PhotoUploader
  belongs_to :uploader, :class_name => "User"

  validates :uploader_id, presence: true
end
