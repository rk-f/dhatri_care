class Api::OrganizationsController < ApplicationController
    before_action :set_organization, only:[:show, :update, :destroy]
    # GET /api/organizations
    def index
      @organizations = Organization.all
      render json: @organizations
    end
  
    # GET /api/organizations/1
    def show
      render json: @organization
    end
  
    # POST /api/organizations
    def create
      organization = Organization.new(organization_params)
      if organization.save
        render json: organization, status: :created
      else
        render json: organization.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /api/organizations/1
    def update
      if @organization.update(organization_params)
        render json: @organization
      else
        render json: @organization.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /api/organizations/1
    def destroy
      @organization.destroy
    end
  
    private
  
    def set_organization
      @organization = Organization.find(params[:id])
    end
  
    def organization_params
      params.require(:organization).permit(:name, :email, :address_line1, :address_line2, :postal_code, :city, :country)
    end
  end