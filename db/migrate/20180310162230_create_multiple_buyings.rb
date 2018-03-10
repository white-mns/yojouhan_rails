class CreateMultipleBuyings < ActiveRecord::Migration
  def change
    create_table :multiple_buyings do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.integer :battle_no
      t.integer :multiple_buying

      t.timestamps null: false
    end
  end
end
