module Api
  module V1
    class ConversationsController < ApplicationController

      def index
        @conversations = Conversation.all
        render json: @conversations
      end

      def create
        @conversation = Conversation.new(conversation_params)
        serialized_data = ConversationSerializer.new(@conversation)

        if @conversation.save
          ActionCable.server.broadcast 'conversations_channel', @conversation
          head :ok
        else
          render json: {errors: @conversation.errors.full_messages}
        end
      end

      private

      def conversation_params
        params.permit(:title)
      end

    end
  end
end
