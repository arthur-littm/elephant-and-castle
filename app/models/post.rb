class Post < ApplicationRecord
  has_many :likes, as: :object
  belongs_to :category
  belongs_to :user
  searchkick

  include Bootsy::Container
  has_attachment :card_photo

  validates :title, presence: true, length: { maximum: 100 }
  validates :introduction, presence: true, length: { maximum: 300 }
  validates :content, presence: true
  validates :category, presence: true



  # def self.search_category(category)
  #   if search_category
  #     self.where("category like ?", "%#{search_category}%")
  #   else
  #     self.all
  #   end
  # end
end
