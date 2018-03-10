class AddIndexToMegane < ActiveRecord::Migration
  def change
    add_index :meganes, [:e_no, :result_no, :generate_no], :unique => false, :name => 'unique_eno'
    add_index :meganes, :megane_type_id
    add_index :meganes, :megane_count
  end
end
