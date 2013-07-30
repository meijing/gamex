class ErogenousZonesController < ApplicationController
  # GET /erogenous_zones
  # GET /erogenous_zones.json
  def index
    @erogenous_zones = ErogenousZone.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @erogenous_zones }
    end
  end

  # GET /erogenous_zones/1
  # GET /erogenous_zones/1.json
  def show
    @erogenous_zone = ErogenousZone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @erogenous_zone }
    end
  end

  # GET /erogenous_zones/new
  # GET /erogenous_zones/new.json
  def new
    @erogenous_zone = ErogenousZone.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @erogenous_zone }
    end
  end

  # GET /erogenous_zones/1/edit
  def edit
    @erogenous_zone = ErogenousZone.find(params[:id])
  end

  # POST /erogenous_zones
  # POST /erogenous_zones.json
  def create
    @erogenous_zone = ErogenousZone.new(params[:erogenous_zone])

    respond_to do |format|
      if @erogenous_zone.save
        format.html { redirect_to @erogenous_zone, :notice => 'Erogenous zone was successfully created.' }
        format.json { render :json => @erogenous_zone, :status => :created, :location => @erogenous_zone }
      else
        format.html { render :action => "new" }
        format.json { render :json => @erogenous_zone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /erogenous_zones/1
  # PUT /erogenous_zones/1.json
  def update
    @erogenous_zone = ErogenousZone.find(params[:id])

    respond_to do |format|
      if @erogenous_zone.update_attributes(params[:erogenous_zone])
        format.html { redirect_to @erogenous_zone, :notice => 'Erogenous zone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @erogenous_zone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /erogenous_zones/1
  # DELETE /erogenous_zones/1.json
  def destroy
    @erogenous_zone = ErogenousZone.find(params[:id])
    @erogenous_zone.destroy

    respond_to do |format|
      format.html { redirect_to erogenous_zones_url }
      format.json { head :no_content }
    end
  end
end
