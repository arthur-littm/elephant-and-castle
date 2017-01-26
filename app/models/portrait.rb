class Portrait < ApplicationRecord
  belongs_to :user
  has_attachment :photo
  # searchkick

  def self.search(search)
    if search
      self.where("description like ?", "%#{search}%")
    else
      self.all
    end
  end
end
