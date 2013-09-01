class ZoneAct < ActiveRecord::Base
   attr_accessible :act_id, :erogenous_zone_id, :sex
   belongs_to :act
   belongs_to :erogenous_zone
   
  scope :by_zone, lambda { |zone_id, acts|
    joins(:erogenous_zone).where('(zone_acts.sex = erogenous_zones.sex or zone_acts.sex = 2) and zone_acts.erogenous_zone_id = ? and zone_acts.act = ?', zone_id, acts) unless zone_id.nil?
  }
  
  def self.get_act_random(zone_id, acts)
    @za = ZoneAct.by_zone(zone_id, acts).random
    Act.find(@za.act_id) unless @za.nil?
  end
end
