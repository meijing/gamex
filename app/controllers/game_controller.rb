class GameController < ApplicationController
  def index
    @sex_p1 = session[:sex_p1]
    @sex_p2 = session[:sex_p2]

    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def select_player_1
    session[:sex_p1] = params[:sex_p_1]
    redirect_to(root_path)
  end
  
  def select_player_2
    session[:sex_p2] = params[:sex_p_2]
    redirect_to(root_path)
  end
  
  def play
    @sex_p1 = session[:sex_p1]
    @sex_p2 = session[:sex_p2]
    if session[:sex_p1].nil? || session[:sex_p2].nil?
      #mostrar mensaje de errror 
    end
    
    @num_rounds = session[:num_rounds]
    if @num_rounds.nil?
      @num_rounds = 0
      session[:num_rounds] = @num_rounds
    else
      session[:num_rounds] = @num_rounds+1
      @num_rounds = session[:num_rounds]
    end
    
    if session[:who_play].nil?
      session[:who_play] = 1
      session[:p1_pass] = 0
      session[:p2_pass] = 0
      session[:p1_done] = 0
      session[:p2_done] = 0
      @sex_other_player = session[:sex_p2]
    end
    @actual_player = session[:who_play]
    
    if session['player1_name'].nil?
      @p1_name = 'Jugador 1'
    else
      @p1_name = session['player1_name']
    end
    
    if session['player2_name'].nil?
      @p2_name = 'Jugador 2'
    else
      @p2_name = session['player2_name']
    end
    
    if session[:who_play] == 1
      @sex_other_player = session[:sex_p2]
      @zones = session['zones_player1']
      @acts = session['acts_player1']
    else
      @sex_other_player = session[:sex_p1]
      @zones = session['zones_player2']
      @acts = session['acts_player2']
    end
    
    @p1_pass = session[:p1_pass]
    @p2_pass = session[:p2_pass]
    @p1_done = session[:p1_done]
    @p2_done = session[:p2_done]
    
    #obtencion dos valores aleatorios
    begin 
      @zone = ErogenousZone.get_random_zone(@sex_other_player,@zones)
      p '-----------------------'
      p @zone
      p @num_rounds
      @act = ZoneAct.get_act_random(@zone.id,@acts, @num_rounds) unless @zone.nil?
    end while @act.nil?
    @act = Act.find(@act.act_id)
   # @toy = Toy.get_toy_random(@zone.id, @act.id) unless @zone.nil? && @act.nil?
  end
  
  def pass_turn
    if session[:who_play] == 1
      session[:who_play] = 2
      session[:p1_pass] = session[:p1_pass] +1
    else
      session[:p2_pass] = session[:p2_pass] +1
      session[:who_play] = 1
    end
    redirect_to(play_path)
  end
  
  def done
    if session[:who_play] == 1
      session[:p1_done] = session[:p1_done] +1
      session[:who_play] = 2
    else
      session[:p2_done] = session[:p2_done] +1
      session[:who_play] = 1
    end
    redirect_to(play_path)
  end

end
