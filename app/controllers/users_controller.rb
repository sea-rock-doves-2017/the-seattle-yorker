class UsersController
  def new
    @user = User.new
    redirect_to new_user_path
  end

  def create
    @user = User.create(params[:user_info])
    if @user.persisted?
      session[:id] = @user.id

    else
    end
  end

  def show
  end
end
