class AddIndexToMarket < ActiveRecord::Migration
  def change
    add_index :markets, [:e_no, :result_no, :generate_no], :unique => false, :name => 'unique_eno'
    add_index :markets, :market_no
    add_index :markets, :unit_type
    add_index :markets, :orig_name
    add_index :markets, :name
    add_index :markets, :value
    add_index :markets, :attack
    add_index :markets, :biattack
    add_index :markets, :grand
    add_index :markets, :guard_elemental
    add_index :markets, :guard_value
    add_index :markets, :forecast
    add_index :markets, :caution
    add_index :markets, :continuance
    add_index :markets, :enthusiasm
    add_index :markets, :goodwill
    add_index :markets, :charge
    add_index :markets, :tokushu
    add_index :markets, :fuka1
    add_index :markets, :fuka2
    add_index :markets, :strength
  end
end
