class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def create
        @user = User.create(user_params)
    end

    private
    
    def user_params
        params.permit(:username, :password, :image)
    end
end
