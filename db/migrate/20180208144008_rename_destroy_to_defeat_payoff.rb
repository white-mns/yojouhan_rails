class RenameDestroyToDefeatPayoff < ActiveRecord::Migration
  def change
    rename_column :payoffs, :destroy, :defeat
  end
end
