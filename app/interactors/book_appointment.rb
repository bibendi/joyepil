class BookAppointment
  include Interactor

  def call
    appointment = Appointment.new(context.appointment_params)
    context.appointment = appointment

    if appointment.valid?
      AppointmentMailer.notification(appointment).deliver_now
    else
      context.fail!(errors: appointment.errors)
    end
  end
end
