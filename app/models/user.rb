class User < ApplicationRecord
  has_many :photos
  has_many :likes

  validates :username, presence: true
end
