class AddUserToPortrait < ActiveRecord::Migration[5.0]
  def change
    add_reference :portraits, :user, index: true
  end
end
