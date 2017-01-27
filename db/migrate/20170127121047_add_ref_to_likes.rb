class AddRefToLikes < ActiveRecord::Migration[5.0]
  def change
    add_reference :likes, :post, index: true
    add_reference :likes, :portraitt, index: true
    add_reference :likes, :video, index: true
  end
end
