class CreateCastleStructureMajorTypeNums < ActiveRecord::Migration
  def change
    create_table :castle_structure_major_type_nums do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.integer :build_num
      t.integer :guard_num
      t.integer :goods_num

      t.timestamps null: false
    end
  end
end
