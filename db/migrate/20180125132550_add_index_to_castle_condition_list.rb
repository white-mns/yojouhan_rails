class AddIndexToCastleConditionList < ActiveRecord::Migration
  def change
    add_index :castle_condition_lists, :castle_condition_id
    add_index :castle_condition_lists, :name
  end
end
