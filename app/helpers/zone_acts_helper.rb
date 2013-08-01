module ZoneActsHelper
  def findby_zone_and_act(zone_id, act_id)
    @res = ZoneAct.where("erogenous_zone_id = "+zone_id.to_s+" and act_id = "+act_id.to_s)
    if @res.nil? || @res.empty? || @res.length == 0
      return nil
    end
    return @res[0]
  end
end
