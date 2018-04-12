module SessionsHelper
  def login(user)
    remember_token = user.remember_token
    cookies.permanent[:the_remember_token] = remember_token
    user.update_attribute(:remember_token, User.digest(remember_token))
    self.current_user = user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def current_user=(user)
    @current_user = user
  end


end
