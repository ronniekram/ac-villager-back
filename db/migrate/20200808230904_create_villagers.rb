class CreateVillagers < ActiveRecord::Migration[6.0]
  def change
    create_table :villagers do |t|
      t.string :name
      t.string :image
      t.string :gender
      t.string :personality
      t.string :species
      t.string :birthday
      t.timestamps
    end
  end
end
