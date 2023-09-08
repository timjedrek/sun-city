class MessageConfirmationMailer < ApplicationMailer

  default from: 'no-reply@simplifly-co.com'

  def message_confirmation_email(message)
    @message = message

    mail(to: @message.email, bcc: ["no-reply@simplifly-co.com", "info@simpliflyco.com"], subject: "✈️ Thank you for contacting SimpliFly")
  end

end
