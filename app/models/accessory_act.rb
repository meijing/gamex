class AccessoryAct < ActiveRecord::Base
  attr_accessible :accesory_id, :act_id, :sex
  belongs_to :accessory
  belongs_to :act
end
