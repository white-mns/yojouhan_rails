class CreatePayoffs < ActiveRecord::Migration
  def change
    create_table :payoffs do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.integer :mob
      t.integer :payoff
      t.integer :attack
      t.integer :support
      t.integer :defense
      t.integer :destroy
      t.integer :selling
      t.integer :income
      t.integer :spending
      t.integer :profit
      t.integer :loss

      t.timestamps null: false
    end
  end
end
