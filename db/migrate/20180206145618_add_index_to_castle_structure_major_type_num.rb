class AddIndexToCastleStructureMajorTypeNum < ActiveRecord::Migration
  def change
    add_index :castle_structure_major_type_nums, [:e_no, :result_no, :generate_no], :unique => false, :name => 'unique_eno'
    add_index :castle_structure_major_type_nums, :build_num
    add_index :castle_structure_major_type_nums, :guard_num
    add_index :castle_structure_major_type_nums, :goods_num

  end
end
