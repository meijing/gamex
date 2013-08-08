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
    
    session[:who_play] = 1
    @actual_player = session[:who_play]
  end
  
  def pass_turn
    if session[:who_play] == 1
      session[:who_play] = 2
    else
      session[:who_play] = 1
    end
  end
  
  def done
    if session[:who_play] == 1
      session[:who_play] = 2
    else
      session[:who_play] = 1
    end
  end

end
