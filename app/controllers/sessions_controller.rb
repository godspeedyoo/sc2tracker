class SessionsController < ApplicationController
  
  def new
    # show login page
  end

  def create
    auth = request.env["omniauth.auth"]
    store_current_user_credentials auth
    redirect_to OmniAuth.config.full_host
    return
  end

  def failure
    @message = params[:message]
  end

  def logout
    logout_current_user
  end

end
