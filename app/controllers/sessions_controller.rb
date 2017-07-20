class SessionsController < ApplicationController
  def new
    # create new sessions
  end

  def create
    user = User.find_by(username: params[:username])
    # if user && user.authenticate(params[:password])
      session[:id] = user.id
      redirect_to articles_path
    # else
    #   flash.now[:error] = 'There was a problem with authentication.'
    #   render 'new'
    # end
  end

  def destroy
    session.clear
    redirect_to articles_path
  end
end
