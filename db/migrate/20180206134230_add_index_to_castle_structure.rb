class AddIndexToCastleStructure < ActiveRecord::Migration
  def change
    add_index :castle_structures, [:e_no, :result_no, :generate_no], :unique => false, :name => 'unique_eno'
    add_index :castle_structures, :frame_type
    add_index :castle_structures, :i_no
  end
end
