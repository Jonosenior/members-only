class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
  end

  def new
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
