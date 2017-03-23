class SessionsController < ApplicationController
  before_action :ensure_logged_in, only: [:new, :create]

  def new
    if current_user
      redirect_to cats_url
    else
      render :new
    end
  end

  def create
    user_name = params[:user][:user_name]
    password = params[:user][:password]
    user = User.find_by_credentials(user_name, password)
    if user
      log_in(user)
      redirect_to cats_url
    else
      flash['login_error'] = "username or password incorrect"
      redirect_to new_session_url
    end
  end

  def destroy
    if current_user
      log_out
      redirect_to new_session_url
    end
  end

end
