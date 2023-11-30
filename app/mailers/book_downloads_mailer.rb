class BookDownloadsMailer < ApplicationMailer

  default from: 'no-reply@suncityaviationacademy.com'

  def book_downloads(book_download)
    @book_download = book_download

    if Rails.env.production?
      mail(to: @book_download.email, bcc: ["no-reply@suncityaviationacademy.com", "info@suncityaviation.com", "georgette@suncityaviation.com"], reply_to: "info@suncityaviation.com", subject: "✈️ FREE Pilot Training Booklet Sun City Aviation Academy")
    else
      mail(to: @book_download.email, bcc: ["no-reply@suncityaviationacademy.com"], reply_to: "info@suncityaviation.com", subject: "✈️ FREE Pilot Training Booklet Sun City Aviation Academy")
    end
  end


end
