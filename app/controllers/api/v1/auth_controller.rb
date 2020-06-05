class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    # def create
    #   @user = User.find_by(username: user_login_params[:username])
    #   #User authenticate comes from bcrypt
    #   if @user && @user.authenticate(user_login_params[:password])
    #     # encode token comes from ApplicationController
    #     token = encode_token(@user)
    #     render json: { user: UserSerializer.new(@user), jwt: token }
    #   else
    #     render json: { message: 'Invalid username or password' }, status: :unauthorized
    #   end
    # end

    def create

        user = User.find_by(username: user_login_params[:username])

        if user && user.authenticate(user_login_params[:password])
            token = issue_token(user)
          render json: {user: UserSerializer.new(user), jwt: token}
        else
          render json: {error: 'That user could not be found'}, status: 401
        end
      end

    def show
        user = User.find_by(id: user_id)
        if logged_in?
            render json: user
        else
            render json: { error: 'No user could be found'}, status: 401
        end
    end

    private
    def user_login_params
      params.require(:user).permit(:username, :password)
    end
end
