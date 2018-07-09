class SelectController < ApplicationController
  def index
  	@user = current_user
	@tasks = Task.where(user_id: current_user.id)
	@xxx = "hello"
	render action: :index
  end

  def new
  	@task = Task.new
  	render action: :new

  end

  def create

  	TodayTask.delete_all

    params["checked"]["id"].each do |e|
  	  t = TodayTask.new(user_id: current_user.id, task_id: e)
  	  t.save
      redirect_to today_path
    end

  end
end