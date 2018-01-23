class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.string :name
      t.string :nickname

      t.timestamps
    end
  end
end
