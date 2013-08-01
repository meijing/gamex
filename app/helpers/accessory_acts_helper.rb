module AccessoryActsHelper
  def findby_accessory_and_act(accessory_id, act_id)
    @res = AccessoryAct.where("accesory_id = "+accessory_id.to_s+" and act_id = "+act_id.to_s)
    if @res.nil? || @res.empty? || @res.length == 0
      return nil
    end
    return @res[0]
  end
end
