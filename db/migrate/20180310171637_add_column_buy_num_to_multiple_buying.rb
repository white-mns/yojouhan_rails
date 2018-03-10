class AddColumnBuyNumToMultipleBuying < ActiveRecord::Migration
  def change
    add_column :multiple_buyings, :buy_num, :integer
    add_index  :multiple_buyings, :buy_num
  end
end
