module Api
  module V1
    class SalonsController < ApplicationController

      def index
        @salons = Salon.all
        render json: @salons
      end

    end
  end
end