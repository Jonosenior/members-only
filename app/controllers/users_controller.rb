class UsersController < ApplicationController
  before_action :require_logged_out, only: [:new, :create]

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login @user
      flash[:success] = "You're signed up #{@user.name}!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def require_logged_out
    unless !logged_in?
      flash.now[:error] = "Please logout if you wish to sign up a new user"
      redirect_to root_path
    end
  end


end
