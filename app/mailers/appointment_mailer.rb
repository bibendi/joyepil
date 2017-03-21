class AppointmentMailer < ApplicationMailer
  def notification(appointment)
    @appointment = appointment

    mail(to: Rails.application.config.notification_email,
         subject: "Онлайн запись с сайта")
  end
end
