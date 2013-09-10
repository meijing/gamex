class ZoneActsController < ApplicationController
  # GET /zone_acts
  # GET /zone_acts.json
  def index
    @zones = ErogenousZone.all
    @acts = Act.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /zone_acts/1
  # GET /zone_acts/1.json
  def show
    @zone_act = ZoneAct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @zone_act }
    end
  end

  # GET /zone_acts/new
  # GET /zone_acts/new.json
  def new
    @zone_act = ZoneAct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @zone_act }
    end
  end

  # GET /zone_acts/1/edit
  def edit
    @zone_act = ZoneAct.find(params[:id])
  end

  # POST /zone_acts
  # POST /zone_acts.json
  def create
    @zone_act = ZoneAct.new(params[:zone_act])

    respond_to do |format|
      if @zone_act.save
        format.html { redirect_to zone_acts_path }
        
      else
        format.html { render :action => "new" }
        format.json { render :json => @zone_act.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /zone_acts/1
  # PUT /zone_acts/1.json
  def update
    @zone_act = ZoneAct.find(params[:id])

    respond_to do |format|
      if @zone_act.update_attributes(params[:zone_act])
        format.html { redirect_to @zone_act, :notice => 'Zone act was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @zone_act.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /zone_acts/1
  # DELETE /zone_acts/1.json
  def destroy
    @zone_act = ZoneAct.find(params[:id])
    @zone_act.destroy

    respond_to do |format|
      format.html { redirect_to zone_acts_url }
      format.json { head :no_content }
    end
  end
  
  def create_zone_act
    @zone_act = ZoneAct.new
    @zone_act.act_id = params[:act_id]
    @zone_act.erogenous_zone_id = params[:zone_id]
    @zone_act.sex = params[:sex]
    @zone_act.save
    
    redirect_to(zone_acts_path)
  end
end
