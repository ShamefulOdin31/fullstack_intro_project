class AssociationChange < ActiveRecord::Migration[6.0]
  def change
    rename_column :characters, :class_id, :char_class_id
    rename_column :characters, :race, :race_id
  end
end
