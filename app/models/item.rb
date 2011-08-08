class Item < ActiveRecord::Base
  belongs_to :type, :class_name => "ItemType", :foreign_key => "type_id"
  
  
end
