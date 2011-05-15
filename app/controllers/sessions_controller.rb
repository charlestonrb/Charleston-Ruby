class SessionsController < ApplicationController
  def callback
    auth # Do what you want with the auth hash!
  end

  def auth; request.env['omniauth.auth'] end
  
  def index
  end
end