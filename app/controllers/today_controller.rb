class TodayController < ApplicationController
  def index
 
    @todaytasks = TodayTask.where(user_id: current_user.id)

  	render action: :index
  end
end
