class ChangeDataTypeNameOfMarket < ActiveRecord::Migration
  def change
    change_column :markets, :name,  :string
  end
end
