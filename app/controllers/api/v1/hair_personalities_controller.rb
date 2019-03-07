module Api
  module V1
    class HairPersonalitiesController < ApplicationController

      def index
        @hair_personailities = HairPersonality.all
        render json: @hair_personailities
      end

      def create
        @hair_personality = HairPersonality.new(hair_personality_params)
        if @hair_personality.save
          render json: @hair_personality
        else
          render json: {errors: @hair_personality.errors}
        end
      end




      private

      def hair_personality_params
        params.require(:hair_personality).permit(:name)
      end
    end
  end
end
