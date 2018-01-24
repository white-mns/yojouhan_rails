class AddIndexToRegaliaList < ActiveRecord::Migration
  def change
    add_index :regalia_lists, :regalia_id
    add_index :regalia_lists, :name
  end
end
