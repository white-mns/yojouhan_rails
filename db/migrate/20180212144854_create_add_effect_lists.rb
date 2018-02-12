class CreateAddEffectLists < ActiveRecord::Migration
  def change
    create_table :add_effect_lists do |t|
      t.integer :add_effect_id
      t.string :name

      t.timestamps null: false
    end
  end
end
