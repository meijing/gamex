class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def relationships
    respond_to do |format|
      format.html # relationships.html.erb
    end
  end
end
