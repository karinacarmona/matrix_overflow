class SessionsController < ApplicationController
  def new
    #should this be doing something?
  end

  def create
    params[:session]
    user = User.find_by(name: params[:session][:name])
    if user
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
