class Accessory < ActiveRecord::Base
   attr_accessible :name
   has_many :accessory_acts
end
