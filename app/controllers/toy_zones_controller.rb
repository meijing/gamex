class ToyZonesController < ApplicationController
  # GET /toy_zones
  # GET /toy_zones.json
  def index
    @zones = ErogenousZone.all
    @toys = Toy.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /toy_zones/1
  # GET /toy_zones/1.json
  def show
    @toy_zone = ToyZone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @toy_zone }
    end
  end

  # GET /toy_zones/new
  # GET /toy_zones/new.json
  def new
    @toy_zone = ToyZone.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @toy_zone }
    end
  end

  # GET /toy_zones/1/edit
  def edit
    @toy_zone = ToyZone.find(params[:id])
  end

  # POST /toy_zones
  # POST /toy_zones.json
  def create
    @toy_zone = ToyZone.new(params[:toy_zone])

    respond_to do |format|
      if @toy_zone.save
        format.html { redirect_to @toy_zone, :notice => 'Toy zone was successfully created.' }
        format.json { render :json => @toy_zone, :status => :created, :location => @toy_zone }
      else
        format.html { render :action => "new" }
        format.json { render :json => @toy_zone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /toy_zones/1
  # PUT /toy_zones/1.json
  def update
    @toy_zone = ToyZone.find(params[:id])

    respond_to do |format|
      if @toy_zone.update_attributes(params[:toy_zone])
        format.html { redirect_to @toy_zone, :notice => 'Toy zone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @toy_zone.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /toy_zones/1
  # DELETE /toy_zones/1.json
  def destroy
    @toy_zone = ToyZone.find(params[:id])
    @toy_zone.destroy

    respond_to do |format|
      format.html { redirect_to toy_zones_url }
      format.json { head :no_content }
    end
  end
  
  def create_zone_toy
    @zone_toy = ToyZone.new
    @zone_toy.toy_id = params[:toy_id]
    @zone_toy.erogenous_zone_id = params[:zone_id]
    @zone_toy.sex = params[:sex]
    @zone_toy.save
    
    redirect_to(zone_toys_path)
  end
end
