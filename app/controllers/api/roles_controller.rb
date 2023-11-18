class Api::RolesController < ApplicationController
   # GET /api/roles
   def index
    @roles = Role.all
    render json: @roles
  end

  # GET /api/roles/1
  def show
    render json: @role
  end

  # POST /api/roles
  def create
    role = Role.new(role_params)
    if role.save
      render json: role, status: :created
    else
      render json: role.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/roles/1
  def update
    if @role.update(role_params)
      render json: @role
    else
      render json: @role.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/roles/1
  def destroy
    @role.destroy
  end

  private

  def set_role
    @role = Role.find(params[:id])
  end

  def role_params
    params.require(:role).permit(:name)
  end
end
