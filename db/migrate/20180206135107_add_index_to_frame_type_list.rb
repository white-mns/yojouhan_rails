class AddIndexToFrameTypeList < ActiveRecord::Migration
  def change
    add_index :frame_type_lists, :frame_type_id
    add_index :frame_type_lists, :name
  end
end
