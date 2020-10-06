class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :race
      t.integer :class
      t.integer :str
      t.integer :inte
      t.integer :dex
      t.integer :wis
      t.integer :con
      t.integer :cha

      t.timestamps
    end
  end
end
