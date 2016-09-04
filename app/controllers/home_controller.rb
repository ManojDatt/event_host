class HomeController < ApplicationController
  def index
    @events=Event.all
    @live_events = Event.live_events
    @deactive_events = Event.deactive_events
    @upcomming_events= Event.upcomming_events
  end
  def show_event
    @user = User.new   
    @event=Event.find(params[:id])
  end
  def about
  end
  def youtube_videos
       @youtube_videos = YouTubeVideo.all.order('updated_at DESC')
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
    notification = PayuIndia::Notification.new(request.query_string, options = {:key => 'fB7m8s', :salt => 'eRis5Chv', :params => params})

    @subscription = Subscription.find(notification.invoice) # notification.invoice is order id/cart id which you have submited from payment direction page.

    if notification.acknowledge      
      begin
        if notification.complete?          
           @subscription.status = 'success'
           @subscription.created_at = Time.now
          @order = Order.create(:total => notification.gross, :card_holder_name => params['name_on_card'], :order_number => notification.invoice)
          reset_session
          redirect_to @subscription
        else          
          @cart.status = "failed"
          render :text => "Order Failed! #{notification.message}"
        end
      ensure
        @cart.save
      end
    end    
  end
  private
  def comment_params
  end
  def subscription_pasrams
    params.require(:user).permit(:name, :email, subscriptions:[:name, :card_number,:card_cvv])
  end
end
