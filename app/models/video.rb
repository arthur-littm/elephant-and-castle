class Video < ApplicationRecord
  belongs_to :category
  belongs_to :user
  searchkick


  include Bootsy::Container
  has_attachment :card_photo

  validates :title, presence: true, length: { maximum: 100 }
  validates :link, presence: true
  validates :content, presence: true
  validates :category, presence: true
end
