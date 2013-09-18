class Gravity < ActiveRecord::Base
  attr_accessible :component_id, :connected_id
  belongs_to :component
  belongs_to :connected, class_name: "Component" 
end
