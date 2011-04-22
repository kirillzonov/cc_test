class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find(:all, :conditions => {:email => params[:email], :password => params[:password]})
    if user.present?
      session[:user_id] = user.id
      redirect_to :root, :notice => "You logged in!"
    else
      redirect_to login_url, :notice => "Wrong email or password"
    end
  end

  def index
  end

end
