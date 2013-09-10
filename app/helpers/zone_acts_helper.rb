module ZoneActsHelper
  def findby_zone_and_act(zone_id, act_id)
    @res = ZoneAct.where("erogenous_zone_id = "+zone_id.to_s+" and act_id = "+act_id.to_s)
    if @res.nil? || @res.empty? || @res.length == 0
      return nil
    end
    return @res[0]
  end
  
  def get_all_zones
    @names = []
    ErogenousZone.all.each do |z|
      @names << [z.name, z.id]
    end
    return @names
  end

  def get_all_acts
    @names = []
    Act.all.each do |a|
      @names << [a.description, a.id]
    end
    return @names
  end
end
