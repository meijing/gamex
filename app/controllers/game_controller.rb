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
    if session[:sex_p1].nil? || session[:sex_p2].nil?
      #mostrar mensaje de errror 
    end
    
    p '___________________________'
    if session[:who_play].nil?
      p 'who'
      session[:who_play] = 1
      @sex_other_player = session[:sex_p2]
    end
    @actual_player = session[:who_play]
    
    if session[:who_play] == 1
      @sex_other_player = session[:sex_p2]
    else
      @sex_other_player = session[:sex_p1]
    end
    
    #obtencion dos valores aleatorios
    @zone = ErogenousZone.get_random_zone(@sex_other_player)
    p '---------------------'
    p @actual_player
    p @sex_other_player
    p @zone
    @act = ZoneAct.get_act_random(@zone.id) unless @zone.nil?
    p @act
   # @toy = Toy.get_toy_random(@zone.id, @act.id) unless @zone.nil? && @act.nil?
  end
  
  def pass_turn
    if session[:who_play] == 1
      session[:who_play] = 2
    else
      session[:who_play] = 1
    end
    redirect_to(play_path)
  end
  
  def done
    if session[:who_play] == 1
      session[:who_play] = 2
    else
      session[:who_play] = 1
    end
    redirect_to(play_path)
  end

end
