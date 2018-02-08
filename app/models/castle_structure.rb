class CastleStructure < ActiveRecord::Base
	belongs_to :p_name,	    :foreign_key => [:e_no, :result_no, :generate_no], :primary_key => [:e_no, :result_no, :generate_no], :class_name => 'Name'
	belongs_to :item,       :foreign_key => [:e_no, :i_no, :result_no, :generate_no],       :primary_key => [:e_no, :i_no, :result_no, :generate_no],      :class_name => 'Item'
	belongs_to :frame_type_name, :foreign_key => :frame_type,       :primary_key => :frame_type_id,      :class_name => 'FrameTypeList'
end
