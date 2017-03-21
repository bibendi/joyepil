class AppointmentsController < ApplicationController
  layout "common"

  def new
    @appointment = Appointment.new
  end

  def create
    context = BookAppointment.call(appointment_params: appointment_params)

    if context.success?
      redirect_to new_appointment_url,
                  notice: "Спасибо за проявленный интерес! Мы свяжемся с вами в самое ближайшее время!"
    else
      flash.now[:error] = "Возникли ошибки"
      @appointment = context.appointment
      render :new
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:client_name, :client_phone)
  end
end
