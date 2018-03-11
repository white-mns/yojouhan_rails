class AddIndexToBuyTypeList < ActiveRecord::Migration
  def change
    add_index :buy_type_lists, :buy_type_id
    add_index :buy_type_lists, :name
  end
end
