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
    
    if session[:who_play].nil?
      session[:who_play] = 1
      session[:p1_pass] = 0
      session[:p2_pass] = 0
      session[:p1_done] = 0
      session[:p2_done] = 0
      @sex_other_player = session[:sex_p2]
    end
    @actual_player = session[:who_play]
    
    p '-------------------------'
    p session['player1_name']
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
    else
      @sex_other_player = session[:sex_p1]
    end
   
    @p1_pass = session[:p1_pass]
    @p2_pass = session[:p2_pass]
    @p1_done = session[:p1_done]
    @p2_done = session[:p2_done]
    
    #obtencion dos valores aleatorios
    @zone = ErogenousZone.get_random_zone(@sex_other_player)
    @act = ZoneAct.get_act_random(@zone.id) unless @zone.nil?
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
