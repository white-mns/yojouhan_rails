class AddIndexToFortressGuard < ActiveRecord::Migration
  def change
    add_index :fortress_guards, [:e_no, :result_no, :generate_no], :unique => false, :name => 'unique_eno'
    add_index :fortress_guards, :pysics
    add_index :fortress_guards, :electric_shock
    add_index :fortress_guards, :cold
    add_index :fortress_guards, :flame
    add_index :fortress_guards, :saint_devil
  end
end
