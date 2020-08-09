class CreateIslands < ActiveRecord::Migration[6.0]
  def change
    create_table :islands do |t|
      t.string :name
      t.string :owner
      t.integer :villager_ids
      t.timestamps
    end
  end
end
