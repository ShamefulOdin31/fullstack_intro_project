class RemoveClass < ActiveRecord::Migration[6.0]
  def change
    rename_column :characters, :class, :class_id
  end
end
