class ToyActsController < ApplicationController
  # GET /toy_acts
  # GET /toy_acts.json
  def index
    @toys = Toy.all
    @acts = Act.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /toy_acts/1
  # GET /toy_acts/1.json
  def show
    @toy_act = ToyAct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @toy_act }
    end
  end

  # GET /toy_acts/new
  # GET /toy_acts/new.json
  def new
    @toy_act = ToyAct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @toy_act }
    end
  end

  # GET /toy_acts/1/edit
  def edit
    @toy_act = ToyAct.find(params[:id])
  end

  # POST /toy_acts
  # POST /toy_acts.json
  def create
    @toy_act = ToyAct.new(params[:toy_act])

    respond_to do |format|
      if @toy_act.save
        format.html { redirect_to @toy_act, :notice => 'Toy act was successfully created.' }
        format.json { render :json => @toy_act, :status => :created, :location => @toy_act }
      else
        format.html { render :action => "new" }
        format.json { render :json => @toy_act.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /toy_acts/1
  # PUT /toy_acts/1.json
  def update
    @toy_act = ToyAct.find(params[:id])

    respond_to do |format|
      if @toy_act.update_attributes(params[:toy_act])
        format.html { redirect_to @toy_act, :notice => 'Toy act was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @toy_act.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /toy_acts/1
  # DELETE /toy_acts/1.json
  def destroy
    @toy_act = ToyAct.find(params[:id])
    @toy_act.destroy

    respond_to do |format|
      format.html { redirect_to toy_acts_url }
      format.json { head :no_content }
    end
  end
  
  def create_toy_act
    @toy_act = ToyAct.new
    @toy_act.act_id = params[:act_id]
    @toy_act.toy_id = params[:toy_id]
    @toy_act.sex = params[:sex]
    @toy_act.save
    
    redirect_to(toy_acts_path)
  end
end
