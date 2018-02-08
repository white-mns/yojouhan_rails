class AddIndexToPayoff < ActiveRecord::Migration
  def change
    add_index :payoffs, [:e_no, :result_no, :generate_no], :unique => false, :name => 'unique_eno'
    add_index :payoffs, :mob
    add_index :payoffs, :payoff
    add_index :payoffs, :attack
    add_index :payoffs, :support
    add_index :payoffs, :defense
    add_index :payoffs, :destroy
    add_index :payoffs, :selling
    add_index :payoffs, :income
    add_index :payoffs, :spending
    add_index :payoffs, :profit
    add_index :payoffs, :loss
  end
end
