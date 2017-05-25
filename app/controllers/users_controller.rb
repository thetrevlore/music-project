class UsersController < ApplicationController

  def show
    render :show
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login_user!(user)
      redirect_to users_url
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  # def logout
  #   current_user.reset_session_token!
  #   session[:session_token] = nil
  # end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
