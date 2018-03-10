class AddIndexToMeganeTypeList < ActiveRecord::Migration
  def change
    add_index :megane_type_lists, :megane_type_id
    add_index :megane_type_lists, :name
  end
end
