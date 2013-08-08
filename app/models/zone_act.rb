class ZoneAct < ActiveRecord::Base
   attr_accessible :act_id, :erogenous_zone_id, :sex
   belongs_to :act
   belongs_to :erogenous_zone
end
