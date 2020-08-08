class CreateIslands < ActiveRecord::Migration[6.0]
  def change
    create_table :islands do |t|
      t.string :name
      t.integer :num_of_villagers
      t.integer :villager_ids
      t.timestamps
    end
  end
end
