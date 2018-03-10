class AddIndexToMultipleBuying < ActiveRecord::Migration
  def change
    add_index :multiple_buyings, [:e_no, :result_no, :generate_no], :unique => false, :name => 'unique_eno'
    add_index :multiple_buyings, :battle_no
    add_index :multiple_buyings, :multiple_buying
  end
end
