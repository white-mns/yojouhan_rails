class CreateRegaliaLists < ActiveRecord::Migration
  def change
    create_table :regalia_lists do |t|
      t.integer :regalia_id
      t.string :name

      t.timestamps null: false
    end
  end
end
