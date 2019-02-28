module Api
  module V1
    class UsersController < ApplicationController

      def index
        # @users = User.all
        render json: User.all
      end

      def create
        @user = User.new(user_params)
        if @user.save
          render json: @user
        else
          render json: {errors: @user.errors.full_messages}
        end
      end

      def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
          render json: @user
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
