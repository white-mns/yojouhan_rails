class CreateFortressData < ActiveRecord::Migration
  def change
    create_table :fortress_data do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.integer :grand
      t.integer :caution
      t.integer :continuance
      t.integer :enthusiasm
      t.integer :goodwill
      t.integer :forecast
      t.integer :stock
      t.integer :high_grade
      t.integer :mob
      t.integer :drink
      t.integer :regalia

      t.timestamps null: false
    end
  end
end
