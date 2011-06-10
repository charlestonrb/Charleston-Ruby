class SessionsController < ApplicationController
  def callback
    auth # Do what you want with the auth hash!
  end

  def auth; request.env['omniauth.auth'] end

  def index
  end

  def new
  end

  def create
    user = Member.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

end
