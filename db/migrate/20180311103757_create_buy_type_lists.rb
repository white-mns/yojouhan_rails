class CreateBuyTypeLists < ActiveRecord::Migration
  def change
    create_table :buy_type_lists do |t|
      t.integer :buy_type_id
      t.string :name

      t.timestamps null: false
    end
  end
end
