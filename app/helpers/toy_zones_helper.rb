module ToyZonesHelper
  def findby_zone_and_toy(zone_id, toy_id)
    @res = ToyZone.where("erogenous_zone_id = "+zone_id.to_s+" and toy_id = "+toy_id.to_s)
    if @res.nil? || @res.empty? || @res.length == 0
      return nil
    end
    return @res[0]
  end
end
