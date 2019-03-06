module Api
  module V1
    class ServiceTypesController < ApplicationController

        def index
          @service_types = ServiceType.all
          render json: @service_types
        end

      end
    end
  end
