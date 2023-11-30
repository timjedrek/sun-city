class CampMailer < ApplicationMailer

  default from: 'no-reply@suncityaviationacademy.com'

  def camp_email(camp)
    @camp = camp

    if Rails.env.production?
      mail(to: @camp.email, bcc: ["no-reply@suncityaviationacademy.com", "info@suncityaviation.com", "georgette@suncityaviation.com"], reply_to: "info@suncityaviation.com",subject: "✈️ AeroCamp Inquiry at Sun City Aviation Academy")
    else
      # remove client email when not in production
      mail(to: @camp.email, bcc: ["no-reply@suncityaviationacademy.com"], reply_to: "info@suncityaviation.com",subject: "✈️ AeroCamp Inquiry at Sun City Aviation Academy")
    end
  end

end
