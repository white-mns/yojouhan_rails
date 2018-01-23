class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.integer :i_no
      t.integer :type
      t.integer :orig_name
      t.string :name
      t.integer :strength
      t.integer :fuka1
      t.integer :fuka2
      t.integer :guard_elemental
      t.integer :stock
      t.integer :value

      t.timestamps
    end
  end
end
