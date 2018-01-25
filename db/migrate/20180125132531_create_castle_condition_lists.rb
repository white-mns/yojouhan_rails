class CreateCastleConditionLists < ActiveRecord::Migration
  def change
    create_table :castle_condition_lists do |t|
      t.integer :castle_condition_id
      t.string :name

      t.timestamps null: false
    end
  end
end
