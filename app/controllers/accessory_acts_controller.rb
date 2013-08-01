class AccessoryActsController < ApplicationController
  # GET /accessory_acts
  # GET /accessory_acts.json
  def index
    @accessories = Accessory.all
    @acts = Act.all
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /accessory_acts/1
  # GET /accessory_acts/1.json
  def show
    @accessory_act = AccessoryAct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @accessory_act }
    end
  end

  # GET /accessory_acts/new
  # GET /accessory_acts/new.json
  def new
    @accessory_act = AccessoryAct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @accessory_act }
    end
  end

  # GET /accessory_acts/1/edit
  def edit
    @accessory_act = AccessoryAct.find(params[:id])
  end

  # POST /accessory_acts
  # POST /accessory_acts.json
  def create
    @accessory_act = AccessoryAct.new(params[:accessory_act])

    respond_to do |format|
      if @accessory_act.save
        format.html { redirect_to @accessory_act, :notice => 'Accessory act was successfully created.' }
        format.json { render :json => @accessory_act, :status => :created, :location => @accessory_act }
      else
        format.html { render :action => "new" }
        format.json { render :json => @accessory_act.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /accessory_acts/1
  # PUT /accessory_acts/1.json
  def update
    @accessory_act = AccessoryAct.find(params[:id])

    respond_to do |format|
      if @accessory_act.update_attributes(params[:accessory_act])
        format.html { redirect_to @accessory_act, :notice => 'Accessory act was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @accessory_act.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /accessory_acts/1
  # DELETE /accessory_acts/1.json
  def destroy
    @accessory_act = AccessoryAct.find(params[:id])
    @accessory_act.destroy

    respond_to do |format|
      format.html { redirect_to accessory_acts_url }
      format.json { head :no_content }
    end
  end
  
  def create_accessory_act
    @zone_act = AccessoryAct.new
    @zone_act.act_id = params[:act_id]
    @zone_act.accesory_id = params[:accessory_id]
    @zone_act.sex = params[:sex]
    @zone_act.save
    
    redirect_to(accessory_acts_path)
  end
end
