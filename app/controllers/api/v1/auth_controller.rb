module Api
  module V1
    class AuthController < ApplicationController
    # before_action :current_user, only:[:login]

      
      def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
          payload = {user_id: @user.id}
          token = JWT.encode(payload, ENV['SECRET'])
          render json: { user: @user, jwt: token, profile: @user.profiles, appointments: @user.appointments}
        else
          render json: {errors: @user.errors.full_messages}
        end
      end



      private

      def user_params
        params.require(:user).permit(:username, :password)
      end

    end
  end
end
