class ChangeIntegerToFloatPayoff < ActiveRecord::Migration
  def change
    change_column :payoffs, :attack,  :float
    change_column :payoffs, :support, :float
    change_column :payoffs, :defense, :float
    change_column :payoffs, :defeat,  :float
    change_column :payoffs, :selling, :float
  end
end
