class MultipleBuying < ActiveRecord::Base

def self.ransackable_attributes(auth_object = nil)
  column_names
end

def self.ransackable_associations(auth_object = nil)
  Array(reflect_on_all_associations).map(&:name).map(&:to_s)
end
	belongs_to :p_name,	       :foreign_key => [:e_no, :result_no, :generate_no], :primary_key => [:e_no, :result_no, :generate_no], :class_name => 'Name'
	belongs_to :fortress_data, :foreign_key => [:e_no, :result_no, :generate_no], :primary_key => [:e_no, :result_no, :generate_no], :class_name => 'FortressDatum'
	belongs_to :buy_type_name, :foreign_key => :buy_type, :primary_key => :buy_type_id, :class_name => 'BuyTypeList'
end
