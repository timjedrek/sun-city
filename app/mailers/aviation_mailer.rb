class AviationMailer < ApplicationMailer
  default from: 'no-reply@suncityaviationacademy.com'

  def aviation_email(aviation)
    @aviation = aviation

    if Rails.env.production?
      mail(to: @aviation.email, bcc: ["no-reply@suncityaviationacademy.com", "info@suncityaviation.com", "georgette@suncityaviation.com"], reply_to: "info@suncityaviation.com",subject: "✈️ Aviation 101 Inquiry at Sun City Aviation Academy")
    else
      # remove client email when not in production
      mail(to: @aviation.email, bcc: ["no-reply@suncityaviationacademy.com"], reply_to: "info@suncityaviation.com",subject: "✈️ Aviation 101 Inquiry at Sun City Aviation Academy")
    end
  end
end
