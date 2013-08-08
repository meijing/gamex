class ToyAct < ActiveRecord::Base
  attr_accessible :act_id, :toy_id, :sex
  belongs_to :act
  belongs_to :toy
end
