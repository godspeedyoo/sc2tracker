class ProfileController < ApplicationController
  def index
    @response = HTTParty.get('https://us.api.battle.net/sc2/profile/user?access_token=' + session[:access_token])
  end
end
