class Act < ActiveRecord::Base
  attr_accessible :description, :default
  has_many :zone_acts
  has_many :accessory_acts
  has_many :toy_acts
end
