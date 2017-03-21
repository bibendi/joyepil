class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.config.noreply_email
  layout 'mailer'
end
