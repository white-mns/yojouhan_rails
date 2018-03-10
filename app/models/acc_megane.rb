class AccMegane < ActiveRecord::Base
	belongs_to :p_name,	    :foreign_key => [:e_no, :result_no, :generate_no], :primary_key => [:e_no, :result_no, :generate_no], :class_name => 'Name'
	belongs_to :megane_type_name,       :foreign_key => :megane_type_id,       :primary_key => :megane_type_id, :class_name => 'MeganeTypeList'
end
