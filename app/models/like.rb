class Like < ApplicationRecord
  belongs_to :photo
  belongs_to :liker, class_name: :User

  validates :liker, :photo, presence: true
end
