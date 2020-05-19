class UsersController < ApplicationController
    before_action :authorized, only: [:persist]

    def index
        @users = User.all
        render json: @users
    end

    def closet
        @found_user = User.find_by(username: params[:findByUsername])
        if @found_user
            render json: {count: @found_user.outfits.count}
        else
            render json: {count: -2}
        end
    end

    def create
        @user = User.create(user_params)
        if  @user.valid?
            userInfo = {user_id: @user.id}
            token = encode_token(userInfo)
            render json: {user: UserSerializer.new(@user), token: token}
        else
            render json: {error: @user.errors.full_message}
        end
    end

    def persist
        userInfo = {user_id: @user.id}
        token = encode_token(userInfo)
        render json: {user: UserSerializer.new(@user), token: token}
    end

    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            userInfo = {user_id: @user.id}
            token = encode_token(userInfo)
            render json: {user: UserSerializer.new(@user), token: token}

        else
            render json: {error: 'Incorrect username or password. Please try again.'}
        end
    end

    private

    def user_params
        params.permit(:username, :password)
    end

end
