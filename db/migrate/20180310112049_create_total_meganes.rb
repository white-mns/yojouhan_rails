class CreateTotalMeganes < ActiveRecord::Migration
  def change
    create_table :total_meganes do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.integer :megane_type_id
      t.integer :megane_count

      t.timestamps null: false
    end
  end
end
