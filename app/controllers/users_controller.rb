class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    puts session[:user_id]
    @user = User.find(params[:id])
    @posts = @user.posts
    @comments = @user.comments
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def user_params 
    params.require(:user).permit(:name, :email, :password)
  end

end
