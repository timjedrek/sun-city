class ApplicationController < ActionController::Base
  before_action :initialize_multi_page_forms
  invisible_captcha only: [:initialize_multi_page_forms], honeypot: :confirm_email

  private

  def initialize_multi_page_forms
    @enrollment = Enrollment.new
    @book_download = BookDownload.new
  end
end
