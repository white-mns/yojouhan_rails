class AddIndexToUnitOrigNameList < ActiveRecord::Migration
  def change
    add_index :unit_orig_name_lists, :orig_name_id
    add_index :unit_orig_name_lists, :name
  end
end
