class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]
    
    def profile
      @user = User.find(params[:id])
      render json: {user: currentUser}
    end

    def create
      @user = User.new(user_params)
      if @user.valid?
          #use encode_token method to do JWT.encode (AppController)
          @user.save
          @token = encode_token(@user)
          render json: { user: @user, jwt: @token }
      else
          render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end

    def show 
        @user = User.find(params[:id])
        render json: @user
    end

    private
      def user_params
        params.require(:user).permit(:username, :password, :is_admin)
      end

end
