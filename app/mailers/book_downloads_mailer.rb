class BookDownloadsMailer < ApplicationMailer

  default from: 'no-reply@suncityaviationacademy.com'

  def book_downloads(book_download)
    @book_download = book_download

    mail(to: @book_download.email, bcc: ["no-reply@suncityaviationacademy.com", "info@suncityaviation.com"], reply_to: "info@suncityaviation.com", subject: "✈️ FREE Pilot Training Booklet Sun City Aviation Academy")
  end


end
