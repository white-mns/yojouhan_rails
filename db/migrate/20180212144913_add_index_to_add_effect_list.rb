class AddIndexToAddEffectList < ActiveRecord::Migration
  def change
    add_index :add_effect_lists, :add_effect_id
    add_index :add_effect_lists, :name
  end
end
