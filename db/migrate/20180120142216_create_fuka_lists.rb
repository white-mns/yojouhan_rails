class CreateFukaLists < ActiveRecord::Migration
  def change
    create_table :fuka_lists do |t|
      t.integer :fuka_id
      t.string :name

      t.timestamps
    end
  end
end
