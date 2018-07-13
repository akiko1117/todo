class ListController < ApplicationController
  def index
  	@user = current_user
		@tasks = Task.where(user_id: current_user.id)
		render action: :index
  end

  def new
  	@task = Task.new
  	render action: :new
  end

  def create
  	t = Task.new(user_id: current_user.id, content: params["task"]["content"])
  	t.save
    redirect_to tasks_path
  end
end
