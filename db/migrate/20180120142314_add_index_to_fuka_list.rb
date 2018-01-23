class AddIndexToFukaList < ActiveRecord::Migration
  def change
    add_index :fuka_lists, :fuka_id
    add_index :fuka_lists, :name
  end
end
