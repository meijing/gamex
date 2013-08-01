module ToyActsHelper
  def findby_toy_and_act(toy_id, act_id)
    @res = ToyAct.where("toy_id = "+toy_id.to_s+" and act_id = "+act_id.to_s)
    if @res.nil? || @res.empty? || @res.length == 0
      return nil
    end
    return @res[0]
  end
end
