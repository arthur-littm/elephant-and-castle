class AddLinkToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :image_link, :string
  end
end
