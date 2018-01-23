class AddIndexToItem < ActiveRecord::Migration
  def change
    add_index :items, [:e_no, :result_no, :generate_no], :unique => false, :name => 'unique_eno'
    add_index :items, :i_no
    add_index :items, :type
    add_index :items, :orig_name
    add_index :items, :name
    add_index :items, :strength
    add_index :items, :fuka1
    add_index :items, :fuka2
    add_index :items, :guard_elemental
    add_index :items, :stock
    add_index :items, :value
  end
end
