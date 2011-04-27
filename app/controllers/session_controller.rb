class SessionController < ApplicationController
  def new
  end

  def create
    user = User.where(["email = ? AND password = ?", params[:email], params[:password]])
    if user.present?
      session[:user_id] = user.first.user_id
      redirect_to :root, :notice => "You logged in!"
    else
      redirect_to login_url, :notice => "Wrong email or password"
    end
  end

  def index
  end

end
