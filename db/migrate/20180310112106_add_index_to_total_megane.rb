class AddIndexToTotalMegane < ActiveRecord::Migration
  def change
    add_index :total_meganes, [:e_no, :result_no, :generate_no], :unique => false, :name => 'unique_eno'
    add_index :total_meganes, :megane_type_id
    add_index :total_meganes, :megane_count
  end
end
