class Component < ActiveRecord::Base
  attr_accessible :kind_id, :name, :note
  belongs_to :kind
  has_many :cmp_gravities, class_name: "Gravity", foreign_key: "component_id"
  has_many :connection_slaves, through: :cmp_gravities, source: "connected"
  has_many :cnx_gravities, class_name: "Gravity", foreign_key: "connected_id"
  has_many :component_slaves, through: :cnx_gravities, source: "component"
end
