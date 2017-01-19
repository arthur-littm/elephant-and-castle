class AddIntroToVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :introduction, :string
  end
end
