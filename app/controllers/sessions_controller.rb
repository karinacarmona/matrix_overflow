class SessionsController < ApplicationController
  def new
    #should this be doing something?
  end

  def create
    params[:session]
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      login(user)
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
