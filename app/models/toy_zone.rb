class ToyZone < ActiveRecord::Base
  attr_accessible :toy_id, :erogenous_zone_id, :sex
  belongs_to :toy
  belongs_to :zone
end
