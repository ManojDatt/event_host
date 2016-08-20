class HomeController < ApplicationController
  def index
    @events=Event.all
  end

  def show
     @user = User.new   
     @event=Event.find(params[:id])
  end

  def about
      
  end

  def blog
      @posts = Post.all.order('updated_at DESC')
  end

  def gallery
  end

  def contact_us
  end
 
 

end
