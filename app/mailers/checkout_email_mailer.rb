class CheckoutEmailMailer < ApplicationMailer

  default from: 'no-reply@suncityaviationacademy.com'

  def checkout_email(checkout)
    @checkout = checkout
    
    if Rails.env.production?
      mail(to: @checkout.email, bcc: ["no-reply@suncityaviationacademy.com", "info@suncityaviation.com"], reply_to: "info@suncityaviation.com", subject: "✈️ Your Visit to Sun City Aviation Academy")
    else
      mail(to: @checkout.email, bcc: ["no-reply@suncityaviationacademy.com"], reply_to: "info@suncityaviation.com", subject: "✈️ Your Visit to Sun City Aviation Academy")
    end
  end


end
