class AppointmentsController < ApplicationController
  def index
        @appointments = current_user.appointments.all
      end

        def new
          @appointment = current_user.appointments.new
        end

        def create
          
          @appointment = current_user.appointments.create!(appointment_params)
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
      params.require(:appointment).permit(:date_and_time, :created_on, :location, :notes, :fruit_id)
      end
end

