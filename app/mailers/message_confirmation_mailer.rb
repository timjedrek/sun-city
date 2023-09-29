class MessageConfirmationMailer < ApplicationMailer

  default from: 'no-reply@suncityaviationacademy.com'

  def message_confirmation_email(message)
    @message = message

    if Rails.env.production?
      mail(to: @message.email, bcc: ["no-reply@suncityaviationacademy.com", "info@suncityaviation.com"], reply_to: "info@suncityaviation.com", subject: "✈️ Thank you for contacting Sun City Aviation Academy")
    else
      # remove client email from mailer when not in production
      mail(to: @message.email, bcc: ["no-reply@suncityaviationacademy.com"], reply_to: "info@suncityaviation.com",subject: "✈️ Thank you for contacting Sun City Aviation Academy")
    end
  end

end
