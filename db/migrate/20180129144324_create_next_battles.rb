class CreateNextBattles < ActiveRecord::Migration
  def change
    create_table :next_battles do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :block_no
      t.integer :e_no

      t.timestamps null: false
    end
  end
end
