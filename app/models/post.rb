class Post < ApplicationRecord
  include Bootsy::Container
  has_attachment :card_photo

end
