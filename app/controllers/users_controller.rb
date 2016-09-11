class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash.now[:invalid_information] = "Please make sure you entered required information"
      render :new
    end
  end

  def show
    current_user
    @ideas = current_user.ideas
  end

  def destroy
    session.clear
    redirect_to login_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password)
  end

end
