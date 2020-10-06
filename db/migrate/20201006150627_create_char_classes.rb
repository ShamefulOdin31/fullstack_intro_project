class CreateCharClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :char_classes do |t|
      t.string :name

      t.timestamps
    end
  end
end
