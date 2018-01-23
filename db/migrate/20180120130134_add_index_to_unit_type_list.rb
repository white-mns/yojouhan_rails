class AddIndexToUnitTypeList < ActiveRecord::Migration
  def change
    add_index :unit_type_lists, :type_id
    add_index :unit_type_lists, :name
  end
end
