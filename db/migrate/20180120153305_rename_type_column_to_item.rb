class RenameTypeColumnToItem < ActiveRecord::Migration
  def change
    rename_column :items, :type, :unit_type
  end
end
