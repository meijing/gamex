class ErogenousZone < ActiveRecord::Base
   attr_accessible :name, :sex, :default
   has_many :toy_zones
   has_many :zone_acts
   
  def self.get_random_zone(sex,zones)
    ErogenousZone.where('(sex=? or sex=2) and id in (?)',sex, zones).random()
  end
end
