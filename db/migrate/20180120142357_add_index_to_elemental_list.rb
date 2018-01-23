class AddIndexToElementalList < ActiveRecord::Migration
  def change
    add_index :elemental_lists, :elemental_id
    add_index :elemental_lists, :name
  end
end
