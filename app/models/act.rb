class Act < ActiveRecord::Base
  attr_accessible :description, :is_default
  has_many :zone_acts
  has_many :accessory_acts
  has_many :toy_acts
end
