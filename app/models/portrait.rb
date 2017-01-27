class Portrait < ApplicationRecord
  has_many :likes, as: :likeable
  belongs_to :user
  has_attachment :photo
  searchkick
end
