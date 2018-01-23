class Item < ActiveRecord::Base
	belongs_to :p_name,	    :foreign_key => [:e_no, :result_no, :generate_no], :primary_key => [:e_no, :result_no, :generate_no], :class_name => 'Name'
	belongs_to :unit_type_name,       :foreign_key => :unit_type,       :primary_key => :type_id,      :class_name => 'UnitTypeList'
	belongs_to :unit_orig_name,       :foreign_key => :orig_name,       :primary_key => :orig_name_id, :class_name => 'UnitOrigNameList'
	belongs_to :fuka1_name,           :foreign_key => :fuka1,           :primary_key => :fuka_id,      :class_name => 'FukaList'
	belongs_to :fuka2_name,           :foreign_key => :fuka2,           :primary_key => :fuka_id,      :class_name => 'FukaList'
	belongs_to :guard_elemental_name, :foreign_key => :guard_elemental, :primary_key => :elemental_id, :class_name => 'ElementalList'
end
