class Portrait < ApplicationRecord
  belongs_to :user
  has_attachment :photo
  # searchkick

  def self.search(search)
    if search
      self.where("LOWER(description) like ?", "%#{search.downcase}%")
    else
      self.all
    end
  end
end
