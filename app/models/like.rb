class Like < ApplicationRecord
  belongs_to :likeable, polymorphic: true
  validates :ip, uniqueness: { scope: :likeable,
    message: "You already liked this post" }
end
