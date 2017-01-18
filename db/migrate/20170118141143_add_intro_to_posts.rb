class AddIntroToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :introduction, :string
    add_reference :posts, :category, index: true

  end
end
