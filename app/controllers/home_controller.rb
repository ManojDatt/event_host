class HomeController < ApplicationController



  def index
    @events=Event.all
  end

  def show
     @event=Event.find(params[:id])
     respond_to :html
     
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
