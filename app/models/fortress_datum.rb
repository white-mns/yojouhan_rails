class FortressDatum < ActiveRecord::Base
	belongs_to :p_name,	          :foreign_key => [:e_no, :result_no, :generate_no], :primary_key => [:e_no, :result_no, :generate_no], :class_name => 'Name'
	belongs_to :guard,	          :foreign_key => [:e_no, :result_no, :generate_no], :primary_key => [:e_no, :result_no, :generate_no], :class_name => 'FortressGuard'
	belongs_to :castle_condition, :foreign_key => [:e_no, :result_no, :generate_no], :primary_key => [:e_no, :result_no, :generate_no], :class_name => 'CastleConditionText'
	belongs_to :regalia_name,     :foreign_key => :regalia,       :primary_key => :regalia_id,      :class_name => 'RegaliaList'
end
