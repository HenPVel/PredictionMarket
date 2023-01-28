class OrganizationsController < ApplicationController

    def index
        @organizations = Organization.all

        render json: @organizations
    end


    def show
        @organization = Organization.where(id: params[:id])
        render json: @organization
    end


    def create
        @organization = Organization.create(organization_params)
        if @organization.valid?
          render json: @organization
        else
          render json: @organization.errors.full_messages
        end
    end

    def update
        if @organization.update(organization_params)
          render json: @organization
        else
          render json: @organization.errors.full_messages
        end
    end

    def destroy
        @organization.destroy
    end

    private

    def organization_params
        params.permit(:name, :numberOfEmployees, :industry)
    end

end
