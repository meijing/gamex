class ErogenousZone < ActiveRecord::Base
   attr_accessible :name, :sex, :is_default
   has_many :toy_zones
   has_many :zone_acts
   
  def self.get_random_zone(sex,zones)
    ErogenousZone.where('(sex=? or sex=2) and ((? is null and is_default=1) or id in (?))',sex, zones, zones).random()
  end
end
