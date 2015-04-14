class SessionsController < ApplicationController
  
  def new
  end

  def create
    auth = request.env["omniauth.auth"]
    session[:user_id] = auth["uid"]
    session[:user_info] = auth["info"]
    redirect OmniAuth.config.full_host
  end

  def failure
    @message = params[:message]
  end
end