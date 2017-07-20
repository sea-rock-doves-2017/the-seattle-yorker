class SessionsController < ApplicationController
  def new
    # create new sessions
  end

  def create
    user = User.find_by(username: params[:username])
    session[:id] = user.id
    redirect_to articles_path
  end

  def destroy
    session.clear
    redirect_to articles_path
  end
end
