class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :market_no
      t.integer :unit_type
      t.integer :orig_name
      t.integer :name
      t.integer :value
      t.integer :attack
      t.integer :biattack
      t.integer :grand
      t.integer :guard_elemental
      t.integer :guard_value
      t.integer :forecast
      t.integer :caution
      t.integer :continuance
      t.integer :enthusiasm
      t.integer :goodwill
      t.integer :charge
      t.integer :tokushu
      t.integer :fuka1
      t.integer :fuka2
      t.integer :strength
      t.integer :e_no

      t.timestamps null: false
    end
  end
end
