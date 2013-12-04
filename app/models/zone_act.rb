class ZoneAct < ActiveRecord::Base
   attr_accessible :act_id, :erogenous_zone_id, :sex, :high_level
   belongs_to :act
   belongs_to :erogenous_zone
   
  scope :by_zone, lambda { |zone_id, acts, cont_rounds|
    @a = 1
    if @acts.nil?
      @a = nil
    end
    joins(:erogenous_zone).where('(zone_acts.sex = erogenous_zones.sex or zone_acts.sex = 2) and zone_acts.erogenous_zone_id = ? and (? is null or zone_acts.act_id in (?)) and ((?<=20 and high_level=0) or ?>20)', zone_id, @a, acts, cont_rounds, cont_rounds) unless zone_id.nil?
  }
  
  def self.get_act_random(zone_id, acts, cont_rounds)
    
     @za = ZoneAct.by_zone(zone_id, acts, cont_rounds).random
    
    
  end
end
