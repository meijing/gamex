class ErogenousZone < ActiveRecord::Base
   attr_accessible :name, :sex
   has_many :toy_zones
   has_many :zone_acts
   
  def self.get_random_zone(sex)
    ErogenousZone.where('sex=? or sex=2',sex).random()
  end
end
