class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
  end
  
  def new
    @task = Task.new
  end  

  def create
    task = Task.new(task_params)
  end  

  private

    def task_params
      params.require(:tasks).permit(:content, :score_id).merge(user_id: current_user.id)
    end  

end
