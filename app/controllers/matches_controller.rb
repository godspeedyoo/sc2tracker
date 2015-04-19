class MatchesController < ApplicationController
  def data
    data = HTTParty.get('https://us.api.battle.net/sc2/profile/' + session['id'].to_s + '/' + session['realm'].to_s + '/' + session['name'] + '/matches?locale=en_US&apikey=' + ENV['BNET_KEY'])
    render :json => data.to_json
    return
  end

  def index

  end
end