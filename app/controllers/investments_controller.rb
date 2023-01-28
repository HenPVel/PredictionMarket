class InvestmentsController < ApplicationController

    def index
        @investments = Investment.all

        render json: @investments
    end


    def show
        @investment = Investment.where(id: params[:id])
        render json: @investment
    end


    def create
        @investment = Investment.create(investment_params)
        if @investment.valid?
          render json: @investment
        else
          render json: @investment.errors.full_messages
        end
    end

    def update
        if @investment.update(investment_params)
          render json: @investment
        else
          render json: @investment.errors.full_messages
        end
    end

    def destroy
        @investment.destroy
    end

    private

    def investment_params
        params.permit(:user_id, :initiative_id, :amount)
    end


end
