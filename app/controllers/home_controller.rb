class HomeController < ApplicationController
  def index
    @events=Event.all
  end

  def show
    p"hello in show"
     @event=Event.find(params[:id])
     redirect_to '/'
     
  end

  def about
   
  end

  def blog
  end

  def gallery
  end

  def contact_us
  end
 

end
