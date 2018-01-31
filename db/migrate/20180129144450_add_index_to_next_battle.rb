class AddIndexToNextBattle < ActiveRecord::Migration
  def change
    add_index :next_battles, [:e_no, :result_no, :generate_no], :unique => false, :name => 'unique_eno'
    add_index :next_battles, :block_no
  end
end
