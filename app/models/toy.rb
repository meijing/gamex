class Toy < ActiveRecord::Base
   attr_accessible :name
   has_many :toy_acts
   has_many :toy_zones
   
  scope :by_zone, lambda { |zone_id, act_id|
    joins(:toy_zones).where('toy_zones.erogenous_zone_id = ? and act_id=?', zone_id, act_id) unless zone_id.nil?
  }
  
  def self.get_toy_random(zone_id, act_id)
    Toy.by_zone(zone_id, act_id).random
  end
end
