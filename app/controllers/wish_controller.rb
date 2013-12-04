class WishController < ApplicationController
  def index
    if session[:nplayer].nil?
      @sex= session[:sex_p1]
      session[:nplayer] = 1
    else
      @sex= session[:sex_p2]
      session[:nplayer] = nil
    end
    
    if session['select_p1'].nil?
      session['select_p1'] = 1
      session['player1_name'] = 'Jugador 1'
      @name_player = session['player1_name']
    else
      session['select_p1'] = 2
      session['player2_name'] = 'Jugador 2'
      @name_player = session['player2_name']
    end
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def save_wishes
    @select_p1 = session['select_p1']
    if  @select_p1 == 1
       session['select_p1'] = 2
       if !params[:name].nil? and params[:name] != ''
         session['player1_name'] = params[:name]  
       end
       session['zones_player1'] = params[:zone]
       session['acts_player1'] = params[:act]
       redirect_to custom_wishes_path
    else
      session['select_p1'] = nil
      if !params[:name].nil? and params[:name] != ''
        session['player2_name'] = params[:name]  
      end
      session['zones_player2'] = params[:zone]
      session['acts_player2'] = params[:act]
      redirect_to play_path
    end
    
  end
end
