module Api
  module V1
    class UsersController < ApplicationController


      def index
        @users = User.all
        render json: @users
      end

      def create
        @user = User.new(user_params)
        if @user.save

          token = JWT.encode(payload, ENV['SECRET'])
          # render json: { user: @user, jwt: token}
          render json: { user: UserSerializer.new(@user), jwt: token }, status: :created
        else
          render json: {errors: @user.errors.full_messages}, status: :not_acceptable
        end
      end

      def show 
        render json: User.find(params[:id])
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
         user = User.find(user_id)
         render json: {user: UserSerializer.new(user)}
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
