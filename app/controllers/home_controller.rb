class HomeController < ApplicationController
  def index
  end

  def about
    @user_details=AdminUser.all
  end

  def blog
  end

  def gallery
  end

  def contact_us
  end

end
