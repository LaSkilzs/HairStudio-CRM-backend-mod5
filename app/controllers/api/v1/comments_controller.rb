module Api
  module V1
    class CommentsController < ApplicationController
      def index
        @comments = Comment.all
        render json: @comments
      end

      def create
        @comment = Comment.new(comment_params)
        conversation = Conversation.find(comment_params[:conversation_id])
        if @comment.save
          CommentsChannel.broadcast_to conversation, @comment
          head :ok
        else
          render json: {errors: @comment.errors.full_messages}
        end
      end


      private

      def comment_params
        params.require(:comment).permit(:text, :conversation_id)
      end

    end
  end
end
