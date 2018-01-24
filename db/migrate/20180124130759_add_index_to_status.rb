class AddIndexToStatus < ActiveRecord::Migration
  def change
    add_index :statuses, [:e_no, :result_no, :generate_no], :unique => false, :name => 'unique_eno'
    add_index :statuses, :acc_profit
    add_index :statuses, :rp
    add_index :statuses, :repute
    add_index :statuses, :charm
    add_index :statuses, :tact
    add_index :statuses, :smile
    add_index :statuses, :elegance
    add_index :statuses, :knowledge
    add_index :statuses, :perseverance
    add_index :statuses, :funds
    add_index :statuses, :exp
  end
end
