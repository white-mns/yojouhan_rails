class CreateUnitTypeLists < ActiveRecord::Migration
  def change
    create_table :unit_type_lists do |t|
      t.integer :type_id
      t.string :name

      t.timestamps
    end
  end
end
