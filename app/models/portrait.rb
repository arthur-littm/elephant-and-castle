class Portrait < ApplicationRecord
  belongs_to :user
  has_attachment :photo
  searchkick


end
