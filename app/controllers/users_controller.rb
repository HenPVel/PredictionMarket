class UsersController < ApplicationController


    def index
        @users = User.all

        render json: @users
    end


    def show
        @user = User.where(id: params[:id])
        render json: @user
    end


    def create
        @user = User.create(user_params)
        if @user.valid?
          render json: @user
        else
          render json: @user.errors.full_messages
        end
    end

    def update
        if @user.update(user_params)
          render json: @user
        else
          render json: @user.errors.full_messages
        end
    end

    def destroy
        @user.destroy
    end

    private

    def user_params
        params.permit(:username, :firstName, :lastName, :role, :wallet, :organization_id)
    end


end
