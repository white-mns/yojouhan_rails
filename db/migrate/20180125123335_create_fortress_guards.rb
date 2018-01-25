class CreateFortressGuards < ActiveRecord::Migration
  def change
    create_table :fortress_guards do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.integer :pysics
      t.integer :electric_shock
      t.integer :cold
      t.integer :flame
      t.integer :saint_devil

      t.timestamps null: false
    end
  end
end
