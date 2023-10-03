class DiscoverFlightsMailer < ApplicationMailer

  default from: 'no-reply@suncityaviationacademy.com'

  def discover_flights_email(discover_flight)
    @discover_flight = discover_flight

    mail(to: @discover_flight.email, bcc: ["no-reply@suncityaviationacademy.com", "info@suncityaviation.com"], reply_to: "info@suncityaviation.com", subject: "✈️ Discovery Flight at Sun City Aviation Academy")
  end


end
