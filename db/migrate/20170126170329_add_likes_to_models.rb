class AddLikesToModels < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.timestamps
    end

    add_reference :portraits, :like, index: true
    add_reference :posts, :like, index: true
    add_reference :videos, :like, index: true
  end
end
