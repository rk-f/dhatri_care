class Api::UsersController < ApplicationController
  before_action :set_user, only:[:show, :update, :destroy]
  # GET /api/users
  def index
    @users = User.all
    render json: @users
  end

  # GET /api/users/1
  def show
    render json: @user
  end

  # POST /api/users
  def create
    user = User.new(user_params.merge(skip_password_validation: true))
    if user.save
      render json: user, status: :created
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/users/1
  def destroy
    @user.destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :address_line1, :address_line2, :postal_code,
    :city, :country, :role_id,branch_id: [])
  end
end
