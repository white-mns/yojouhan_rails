class AddColumnBuyTypeToMultipleBuying < ActiveRecord::Migration
  def change
    add_column :multiple_buyings, :buy_type, :integer
    add_index  :multiple_buyings, :buy_type
  end
end
