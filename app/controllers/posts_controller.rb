class PostsController < ApplicationController
  before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @posts = Post.all
  end

  private
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to root_path
    end
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end


end
