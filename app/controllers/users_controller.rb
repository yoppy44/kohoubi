class UsersController < ApplicationController

  def index 
    @users = User.all 
  end  

  def show
    @user = User.find(params[:id])
    @tasks = @user.tasks
    
  end  

end
