class CatRentalRequestsController < ApplicationController
  before_action :logged_in_redirect
  before_action :approve_deny_redirect, only: [:approve, :deny]

  def approve
    current_cat_rental_request.approve!
    redirect_to cat_url(current_cat)
  end

  def create
    fail
    # @rental_request = current_user.cat_rental_requests.new(cat_rental_request_params)
    full_params = cat_rental_request_params
    full_params[:user_id] = current_user.id
    # fail
    @rental_request = CatRentalRequest.new(full_params)
    # @rental_request = CatRentalRequest.new(cat_rental_request_params)
    if @rental_request.save
      redirect_to cat_url(@rental_request.cat)
    else
      flash.now[:errors] = @rental_request.errors.full_messages
      render :new
    end
  end

  def deny
    current_cat_rental_request.deny!
    redirect_to cat_url(current_cat)
  end

  def new
    @rental_request = CatRentalRequest.new
  end

  private
  def current_cat_rental_request
    @rental_request ||=
      CatRentalRequest.includes(:cat).find(params[:id])
  end

  def current_cat
    current_cat_rental_request.cat
  end

  def cat_rental_request_params
    params.require(:cat_rental_request)
      .permit(:cat_id, :end_date, :start_date, :status)
  end

  def approve_deny_redirect
    unless current_cat.user_id == current_user.id
      redirect_to cat_url(current_cat)
    end
  end
end
