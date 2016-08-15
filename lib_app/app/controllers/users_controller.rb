class UsersController < ApplicationController
  def new
    @users = User.new
    render :index
  end

  def create
    user_params = params.require(:user).permit(:first_name, :last_name, :email, :password)
    @user = User.create(user_params)
    redirect_to root_path
  end

end
