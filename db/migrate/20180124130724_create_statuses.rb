class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.integer :acc_profit
      t.integer :rp
      t.integer :repute
      t.integer :charm
      t.integer :tact
      t.integer :smile
      t.integer :elegance
      t.integer :knowledge
      t.integer :perseverance
      t.integer :funds
      t.integer :exp

      t.timestamps null: false
    end
  end
end
