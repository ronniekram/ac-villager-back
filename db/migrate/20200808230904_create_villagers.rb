class CreateVillagers < ActiveRecord::Migration[6.0]
  def change
    create_table :villagers do |t|
      t.string :name
      t.string :image
      t.string :gender
      t.string :personality
      t.string :species
      t.string :birthday
      t.string :sign
      t.integer :island_id
      t.integer :wishlist_id
      t.timestamps
    end
  end
end
