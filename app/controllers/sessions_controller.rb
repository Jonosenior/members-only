class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      login user
      flash[:success] = "Logged in as #{user.name}"
      redirect_to root_path
    else
      flash.now[:danger] = "Invalid user/email combination."
      render 'new'
    end
  end

  def destroy
    logout
    flash[:success] = "You're logged out"
    redirect_to root_path
  end

end
