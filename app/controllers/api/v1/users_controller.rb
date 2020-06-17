class Api::V1::UsersController < ApplicationController

    def index
        users = User.all 

        render json: users
    end
    
    def show
        user = User.find(params[:id])

        render json: user
    end

    def create
        user = User.create(user_params)

        render json: user
    end

    def update
        user = User.find(params[:id])

        user.update(user_params)

        render json: user
    end

    private

    def user_params
        params.require(:user).permit(:name, :bio, :password, :username, 
            :mod, :id, :created_at, :updated_at)
    end
end