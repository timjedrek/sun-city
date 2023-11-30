class QuizResultMailer < ApplicationMailer

  default from: 'no-reply@suncityaviationacademy.com'

  def quiz_result_email(quiz_result)
    @quiz_result = quiz_result

    if Rails.env.production?
      mail(to: @quiz_result.email, bcc: ["no-reply@suncityaviationacademy.com", "info@suncityaviation.com", "georgette@suncityaviation.com"], reply_to: "info@suncityaviation.com",subject: "✈️ Thanks for Taking Our Quiz!")
    else
      # remove client email when not in production
      mail(to: @quiz_result.email, bcc: ["no-reply@suncityaviationacademy.com"], reply_to: "info@suncityaviation.com",subject: "✈️ Thanks for Taking Our Quiz!")
    end
  end



end
