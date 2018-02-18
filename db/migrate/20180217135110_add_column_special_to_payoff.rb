class AddColumnSpecialToPayoff < ActiveRecord::Migration
  def change
      add_column :payoffs, :special, :float
  end
end
