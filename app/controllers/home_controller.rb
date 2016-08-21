class HomeController < ApplicationController
  def index
    @events=Event.all
  end
  def show_event
    @user = User.new   
    @event=Event.find(params[:id])
  end
  def about
  end
  def blog
    @posts = Post.all.order('updated_at DESC')
  end
  def event
    @event = Event.find(params[:id])
    @rules = @event.rules 
    @user = User.new
  end
  def gallery
    @albums = Album.all.includes(:images).order('updated_at DESC')
  end
  def contact_us
  end
  def subscribe
  end
  private
  def comment_params
  end
  def subscription_pasrams
    params.require(:user).permit(:name, :email, subscriptions:[:name, :card_number,:card_cvv])
  end
end
