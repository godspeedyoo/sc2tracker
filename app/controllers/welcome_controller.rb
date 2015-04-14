class WelcomeController < ApplicationController
  def index
    if current_user
      puts "SUCCESSFUL LOGIN!!"
    else 
      redirect_to :login
    end
  end
end
