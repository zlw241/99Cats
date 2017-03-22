

class UsersController < ApplicationController
  before_action :ensure_logged_in, only: [:new, :create]

  def new
    render :new
  end


  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to cats_url
    else
      flash.now[:errors] = @user.errors.full_messages
    end

  end

  def show
    render :show
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :password)
  end
end
