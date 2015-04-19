class ProfileController < ApplicationController
  def data
    data = HTTParty.get('https://us.api.battle.net/sc2/profile/user?access_token=' + session[:access_token])
    profile_data = data['characters'].first
    session['id'] = profile_data['id']
    session['realm'] = profile_data['realm']
    session['name'] = profile_data['displayName']
    
    render :json => data.to_json
  end

  def index
    @data = HTTParty.get('https://us.api.battle.net/sc2/profile/user?access_token=' + session[:access_token])
  end
end
