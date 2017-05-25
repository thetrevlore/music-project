class SessionsController < ApplicationController

  def create
    user = User.find_by_credentials(params[:user][:email], params[:user][:password])

    if user.nil?
      flash[:errors] = ["Invalid credentials"]
      render :new
    else
      login_user!(user)
      #
    end
  end

  def destroy
    current_user.reset_session_token!
    session_token[:session_token] = nil

    redirect_to new_session_url
  end

  def new
    render :new
  end

end
