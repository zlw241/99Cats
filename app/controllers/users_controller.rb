

class UsersController < ApplicationController
  before_action :ensure_logged_in, only: [:new, :create]

  def new
    render :new
  end


  def create
    @user = User.new(user_params)
    if @user.save
      if @user.email
        msg = UserMailer.welcome_email(@user)
        msg.deliver_now
      end
      log_in(@user)
      redirect_to cats_url
    else
      flash.now[:errors] = @user.errors.full_messages
      render new_user_url
    end

  end

  def show
    render :show
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :email, :password)
  end
end
