class AddIndexToFortressData < ActiveRecord::Migration
  def change
    add_index :fortress_data, [:e_no, :result_no, :generate_no], :unique => false, :name => 'unique_eno'
    add_index :fortress_data, :result_no
    add_index :fortress_data, :generate_no
    add_index :fortress_data, :e_no
    add_index :fortress_data, :grand
    add_index :fortress_data, :caution
    add_index :fortress_data, :continuance
    add_index :fortress_data, :enthusiasm
    add_index :fortress_data, :goodwill
    add_index :fortress_data, :forecast
    add_index :fortress_data, :stock
    add_index :fortress_data, :high_grade
    add_index :fortress_data, :mob
    add_index :fortress_data, :drink
    add_index :fortress_data, :regalia
  end
end
