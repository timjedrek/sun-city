class EnrollmentMailer < ApplicationMailer

  default from: 'no-reply@suncityaviationacademy.com'

  def enrollment_email(message)
    @message = message

    if Rails.env.production?
      mail(to: @message.email, bcc: ["no-reply@suncityaviationacademy.com", "info@suncityaviation.com"], reply_to: "info@suncityaviation.com", subject: "✈️ Application to Fly at Sun City Aviation Academy")
    else
      mail(to: @message.email, bcc: ["no-reply@suncityaviationacademy.com"], reply_to: "info@suncityaviation.com", subject: "✈️ Application to Fly at Sun City Aviation Academy")
    end
  end


end
