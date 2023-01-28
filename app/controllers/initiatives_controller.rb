class InitiativesController < ApplicationController

    def index
        @initiatives = Initiative.all

        render json: @initiatives
    end


    def show
        @initiative = Initiative.where(id: params[:id])
        render json: @initiative
    end


    def create
        @initiative = Initiative.create(initiative_params)
        if @initiative.valid?
          render json: @initiative
        else
          render json: @initiative.errors.full_messages
        end
    end

    def update
        if @initiative.update(initiative_params)
          render json: @initiative
        else
          render json: @initiative.errors.full_messages
        end
    end

    def destroy
        @initiative.destroy
    end

    private

    def initiative_params
        params.permit(:user_id, :description, :department, :valuation)
    end

end
