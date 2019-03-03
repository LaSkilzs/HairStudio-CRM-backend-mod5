module Api
  module V1
    class MessagesController < ApplicationController

      def index
        @messages = Message.all
        render json: @messages
      end

      def create
        @message = Message.new(message_params)
        if @message.save

          render json: @message
        else
          render json: {errors: @message.errors.full_messages}
        end
      end

      private
      def message_params
        params.permit(:name, :email, :phone, :message, :salon_id)
      end

    end
  end
end
