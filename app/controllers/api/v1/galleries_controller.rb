module Api
  module V1
    class GalleriesController < ApplicationController

      def index
        @galleries = Gallery.all
        render json: @galleries
      end

    end
  end
end
