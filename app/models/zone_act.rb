class ZoneAct < ActiveRecord::Base
   attr_accessible :act_id, :erogenous_zone_id, :sex
   belongs_to :act
   belongs_to :erogenous_zone
   
  scope :by_zone, lambda { |zone_id|
    joins(:erogenous_zone).where('(zone_acts.sex = erogenous_zones.sex or zone_acts.sex = 2) and zone_acts.erogenous_zone_id = ?', zone_id) unless zone_id.nil?
  }
  
  def self.get_act_random(zone_id)
    @za = ZoneAct.by_zone(zone_id).random
    Act.find(@za.act_id) unless @za.nil?
  end
end
