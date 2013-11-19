class Component < ActiveRecord::Base
  attr_accessible :kind_id, :name, :note
  belongs_to :kind

  has_many :cnx_gravities, class_name: "Gravity", foreign_key: "connected_id"
  has_many :managed_by, through: :cnx_gravities, source: "component"
  has_many :cmp_gravities, class_name: "Gravity", foreign_key: "component_id"
  has_many :manage, through: :cmp_gravities, source: "connected"

  has_many :cmp_usages, class_name: "Usage", foreign_key: "component_id"
  has_many :use, through: :cmp_usages, source: "connected"
  has_many :cnx_usages, class_name: "Usage", foreign_key: "connected_id"
  has_many :used_by, through: :cnx_usages, source: "component"

end
