class SessionsController < ApplicationController
  
  def new
    # show login page
  end

  def create
    puts "*"*50
    puts "PARAMS:"
    puts params
    puts session
    auth = request.env["omniauth.auth"]

    session[:user_id] = auth["uid"]
    session[:user_info] = auth["info"]
    session[:access_token] = auth.credentials.token
    response = HTTParty.get('https://us.api.battle.net/sc2/profile/user?access_token=' + session[:access_token]) 
    byebug
    redirect_to OmniAuth.config.full_host
  end

  def failure
    @message = params[:message]
  end
end
