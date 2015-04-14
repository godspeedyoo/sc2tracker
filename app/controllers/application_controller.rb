class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :redirect_to_https

  helper_method :current_user
  helper_method :current_user_info

  # Escape string
  # def h(text)
  #   Rack::Utils.escape_html(text)
  # end
  def redirect_to_https
    redirect_to :protocol => "https://" unless request.ssl?
  end

  def current_user
    session[:user_id]
  end

  def current_user_info
    session[:user_info]
  end

  def get_player_profile
    return false unless session["access_token"]
    response = HTTParty.get('https://us.api.battle.net/sc2/profile/user?access_token=' + session[:access_token]) 
  end

  def store_current_user_credentials auth
    session[:user_id] = auth["uid"]
    session[:user_info] = auth["info"]
    session[:access_token] = auth.credentials.token
  end

end
