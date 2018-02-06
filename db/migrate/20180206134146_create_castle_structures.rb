class CreateCastleStructures < ActiveRecord::Migration
  def change
    create_table :castle_structures do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.integer :frame_type
      t.integer :i_no

      t.timestamps null: false
    end
  end
end
