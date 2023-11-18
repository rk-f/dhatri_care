class Api::BranchesController < ApplicationController
   # GET /api/branches
   def index
    @branches = Branch.all
    render json: @branches
  end

  # GET /api/branches/1
  def show
    render json: @branch
  end

  # POST /api/branches
  def create
    branch = Branch.new(branch_params)
    if branch.save
      render json: branch, status: :created
    else
      render json: branch.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/branches/1
  def update
    if @branch.update(branch_params)
      render json: @branch
    else
      render json: @branch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/branches/1
  def destroy
    @branch.destroy
  end

  private

  def set_branch
    @branch = Branch.find(params[:id])
  end

  def branch_params
    params.require(:branch).permit(:address_line1, :address_line2, :city, :contact_number, :email, :name, :postal_code, :state,:organization_id)
  end
end
