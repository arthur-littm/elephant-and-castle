class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :link
      t.string :content
      t.references :user, index: true
      t.references :category, index: true
      t.timestamps
    end
  end
end
