module SessionsHelper

  def log_in(user)
    digest = user.remember
    cookies.permanent[:remember_digest] = digest
    user.update_attribute(:remember_digest, digest)
    self.current_user = user
  end

  def log_out
    @user = User.find_by(id: params[:user_id])
    cookies.delete(:remember_digest)
    cookies.delete(:user_id)
    @current_user = nil
  end

  def current_user
    digest = User.digest(cookies[:remember_token])
    @current_user ||= User.find_by(remember_digest: digest)
  end

  def current_user=(user)
    @current_user = user
  end


end
