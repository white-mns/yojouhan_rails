class CreateFrameTypeLists < ActiveRecord::Migration
  def change
    create_table :frame_type_lists do |t|
      t.integer :frame_type_id
      t.string :name

      t.timestamps null: false
    end
  end
end
