class ErogenousZone < ActiveRecord::Base
   attr_accessible :name
   has_many :toy_zones
   has_many :zone_acts
   
  def self.get_random_zone
    ErogenousZone.random()
  end
end
