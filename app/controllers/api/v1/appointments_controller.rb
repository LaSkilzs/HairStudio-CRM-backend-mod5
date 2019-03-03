module Api
  module V1
    class AppointmentsController < ApplicationController

      def index
        @appointments = Appointment.all
        render json: @appointments
      end

      def create
        @appointment = Appointment.new(appointment_params)
        if @appointment.save
          render json: @appointment
        else
          render json: {errors: @appointment.errors}
        end
      end

      def show
        @appointment = Appointment.find(params[:id])
        render json: @appointment
      end

      def update
          @appointment = Appointment.find(params[:id])
        if @appointment.update(appointment_params)
          render json: @appointment
        else
          render json: {errors: @appointment.errors}
        end
      end

      def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
        render json: 204
      end

      private

      def appointment_params
        params.require(:appointment).permit(:date, :start_time, :duration, :status, :service_total, :user_id, :stylist_id)
      end
    end
  end
end
