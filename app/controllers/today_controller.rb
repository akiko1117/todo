class TodayController < ApplicationController
  def index
 
    @todaytasks = TodayTask.where(user_id: current_user.id)

  	render action: :index
  end

  def backto

  	redirect_back(fallback_location: root_path)

    end
end
