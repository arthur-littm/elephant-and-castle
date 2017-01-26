class Portrait < ApplicationRecord
  has_many :likes, as: :object
  belongs_to :user
  has_attachment :photo
  searchkick
end
