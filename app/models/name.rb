class Name < ActiveRecord::Base

def self.ransackable_attributes(auth_object = nil)
  column_names
end
end
