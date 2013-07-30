class HomeController < ApplicationController
  def index
    @erogenous_zones = ErogenousZone.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @erogenous_zones }
    end
  end
end
