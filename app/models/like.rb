class Like < ApplicationRecord
  belongs_to :object, polymorphic: true
  # validates :ip, uniqueness: true
end
