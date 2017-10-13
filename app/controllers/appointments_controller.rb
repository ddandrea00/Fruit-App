class AppointmentsController < ApplicationController
  def index
        @appointments = Appointment.all
      end

        def new
          @appointment = Appointment.new
        end


        def create
          @appointment = Appointment.create!(appointment_params.merge(user: current_user))
          redirect_to appointments_path(@appointment)
        end


        def show
          @appointment = Appointment.find(params[:id])
        end


        def edit
          @appointment = Appointment.find(params[:id])
        end


        def update
          @appointment = Appointment.find(params[:id])
          @appointment.update(appointment_params)
          redirect_to appointments_path(@appointment)
        end


        def destroy
          @appointment = Appointment.find(params[:id])
          @appointment.destroy
          redirect_to appointments_path
        end

      def appointment_params
      params.require(:appointment).permit(:date_and_time, :created_on, :location, :notes)
      end
end

