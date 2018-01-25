class AddIndexToCastleConditionText < ActiveRecord::Migration
  def change
    add_index :castle_condition_texts, [:e_no, :result_no, :generate_no], :unique => false, :name => 'unique_eno'
  end
end
