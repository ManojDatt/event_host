class HomeController < ApplicationController

  before_action :find_event , only:[:show]

  def index
    @events=Event.all
  end

  def show
     
  end

  def about
   
  end

  def blog
  end

  def gallery
  end

  def contact_us
  end
  
  private 
  def find_event
    
    @event=Event.find(params[:id])
  end

end
