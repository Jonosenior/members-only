class UsersController < ApplicationController
  def new
  end

  def show
  end

  def index
    @users = User.all
    @current_user ||= User.find_by(id: session[:user_id]) 
  end
end
