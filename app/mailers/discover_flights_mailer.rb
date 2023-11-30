class DiscoverFlightsMailer < ApplicationMailer

  default from: 'no-reply@suncityaviationacademy.com'

  def discover_flights_email(discover_flight)
    @discover_flight = discover_flight

    if Rails.env.production?
      mail(to: @discover_flight.email, bcc: ["no-reply@suncityaviationacademy.com", "info@suncityaviation.com", "georgette@suncityaviation.com"], reply_to: "info@suncityaviation.com", subject: "✈️ Discovery Flight at Sun City Aviation Academy")
    else
      mail(to: @discover_flight.email, bcc: ["no-reply@suncityaviationacademy.com"], reply_to: "info@suncityaviation.com", subject: "✈️ Discovery Flight at Sun City Aviation Academy")
    end
  end


end
