class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    add_column :likes, :ip, :string
  end
end
