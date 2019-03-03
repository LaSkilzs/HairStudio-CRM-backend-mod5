module Api
  module V1
    class CommentsController < ApplicationController

      def create
        @comment = Comment.new(comment_params)
        conversation = Conversation.find(comment_params[:coversation_id])
        if @comment.save
          render json: @comment
          CommentsChannel.broadcast_to conversation, @comment
          head :ok
        else
          render json: {errors: @comment.errors.full_messages}
        end
      end

      
      private

      def comment_params
        params.permit(:text, :conversation_id)
      end

    end
  end
end
