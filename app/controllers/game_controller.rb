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
end
