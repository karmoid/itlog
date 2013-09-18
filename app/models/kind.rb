class Kind < ActiveRecord::Base
  attr_accessible :name, :note, :universe_id
  belongs_to :universe
  has_many :components
end
