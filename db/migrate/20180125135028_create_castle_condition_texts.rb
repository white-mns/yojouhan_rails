class CreateCastleConditionTexts < ActiveRecord::Migration
  def change
    create_table :castle_condition_texts do |t|
      t.integer :result_no
      t.integer :generate_no
      t.integer :e_no
      t.text :condition_text

      t.timestamps null: false
    end
  end
end
