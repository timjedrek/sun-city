class CheckoutEmailMailer < ApplicationMailer

  default from: 'no-reply@suncityaviationacademy.com'

  def checkout_email(checkout)
    @checkout = checkout

    mail(to: @checkout.email, bcc: ["no-reply@suncityaviationacademy.com", "info@suncityaviation.com"], reply_to: "info@suncityaviation.com", subject: "✈️ Your Visit to Sun City Aviation Academy")
  end


end
