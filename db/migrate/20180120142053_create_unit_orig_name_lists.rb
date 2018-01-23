class CreateUnitOrigNameLists < ActiveRecord::Migration
  def change
    create_table :unit_orig_name_lists do |t|
      t.integer :orig_name_id
      t.string :name

      t.timestamps
    end
  end
end
