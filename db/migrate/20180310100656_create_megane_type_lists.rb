class CreateMeganeTypeLists < ActiveRecord::Migration
  def change
    create_table :megane_type_lists do |t|
      t.integer :megane_type_id
      t.string :name

      t.timestamps null: false
    end
  end
end
