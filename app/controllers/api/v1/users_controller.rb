module Api
  module V1
    class UsersController < ApplicationController
    # before_action :current_user, only:[:login]

      def create
        @user = User.new(user_params)
        if @user.save
          token = encode_token({user_id: @user.id})
          render json: { user: @user, jwt: token}
        else
          render json: {errors: @user.errors.full_messages}
        end
      end

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

      def update
          @user = User.find(params[:id])
        if @user.update(user_params)
          render json: @user
        else
          render json: {errors: @user.errors.full_messages}
        end
      end

      def authenticate
         authHeader = request.headers['Authorization']
         token = authHeader.split(" ")[1]
         decoded_token = JWT.decode(token, ENV['SECRET'], true, {algorithm: 'HS256'})
         user_id = decoded_token[0]["user_id"]
         user= User.find(user_id)
         render json: {user: user}
      end

      def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: 204
      end



      private

      def user_params
        params.permit(:username, :image, :password, :role, :salon_id)
      end

    end
  end
end
