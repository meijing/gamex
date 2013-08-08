class Act < ActiveRecord::Base
  attr_accessible :description
  has_many :zone_acts
  has_many :accessory_acts
  has_many :toy_acts
  
  scope :by_zone, lambda { |zone_id|
    joins(:zone_acts).where('zone_acts.erogenous_zone_id = ?', zone_id) unless zone_id.nil?
  }
  
  def self.get_act_random(zone_id)
    Act.by_zone(zone_id).random
  end
end
