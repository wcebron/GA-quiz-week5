class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @post = Post.new(user_params)
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :nationality, :gender)
  end

end
