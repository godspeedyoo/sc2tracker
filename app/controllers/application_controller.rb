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
end
