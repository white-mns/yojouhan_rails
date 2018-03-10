class AddIndexToAccMegane < ActiveRecord::Migration
  def change
    add_index :acc_meganes, [:e_no, :result_no, :generate_no], :unique => false, :name => 'unique_eno'
    add_index :acc_meganes, :megane_type_id
    add_index :acc_meganes, :megane_count
  end
end
