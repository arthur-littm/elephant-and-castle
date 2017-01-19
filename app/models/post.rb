class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user

  include Bootsy::Container
  has_attachment :card_photo

    validates :title, presence: true, length: { maximum: 100 }
    validates :introduction, presence: true, length: { maximum: 300 }
    validates :content, presence: true
    validates :category, presence: true

end
