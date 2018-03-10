class CreateMeganes < ActiveRecord::Migration
  def change
    create_table :meganes do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.integer :page_type
      t.integer :page_no
      t.integer :megane_type_id
      t.integer :megane_count

      t.timestamps null: false
    end
  end
end
