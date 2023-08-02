class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
  end
  
  def new
    @task = Task.new
  end  

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end  
  end  

  private

    def task_params
      params.require(:tasks).permit(:content, :score_id).merge(user_id: current_user.id)
    end  

end
