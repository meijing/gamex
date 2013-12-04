class ErogenousZone < ActiveRecord::Base
   attr_accessible :name, :sex, :is_default
   has_many :toy_zones
   has_many :zone_acts
   
  scope :by_sex, lambda { |sex|
    where('sex = ? or sex = 2', sex.to_i)
  }
  
  def self.get_random_zone(sex,zones)
    @z = 1
    if zones.nil?
      @z = nil
    end
    
    ErogenousZone.where('(sex=? or sex=2) and ((? is null and is_default=1) or id in (?))',sex, @z, zones).random()
  end
end
