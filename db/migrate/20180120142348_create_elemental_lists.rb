class CreateElementalLists < ActiveRecord::Migration
  def change
    create_table :elemental_lists do |t|
      t.integer :elemental_id
      t.string :name

      t.timestamps
    end
  end
end
