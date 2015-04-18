class ProfileController < ApplicationController
  def data
    @response = HTTParty.get('https://us.api.battle.net/sc2/profile/user?access_token=' + session[:access_token])
    render :json => @response.to_json
  end

  def index
    @response = HTTParty.get('https://us.api.battle.net/sc2/profile/user?access_token=' + session[:access_token])
  end
end
