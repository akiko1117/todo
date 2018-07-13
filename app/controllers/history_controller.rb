class HistoryController < ApplicationController
  def index
  	@pasttasks = Task.where(user_id: current_user.id).where.not(execdate: nil)
  	
  end
end
