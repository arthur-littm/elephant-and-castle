class CreatePortraits < ActiveRecord::Migration[5.0]
  def change
    create_table :portraits do |t|

      t.timestamps
    end
  end
end
