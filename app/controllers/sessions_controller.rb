class SessionsController < ApplicationController
  
  def new
    # show login page
  end

  def create
    puts "*"*50
    puts "Hit #Create route"
    auth = request.env["omniauth.auth"]
    session[:user_id] = auth["uid"]
    session[:user_info] = auth["info"]
    redirect_to 'https://dev.battle.net'
  end

  def failure
    @message = params[:message]
  end
end
