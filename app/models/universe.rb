class Universe < ActiveRecord::Base
  attr_accessible :name, :note
  has_many :kinds
end
