class Camp < ApplicationRecord
  before_validation :strip_phone_number
  
  validates :camp_date, presence: true
  validates :attendee_first_name, presence: true
  validates :attendee_last_name, presence: true
  validates :attendee_age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 8, less_than_or_equal_to: 18 }
  validates :parent_first_name, presence: true
  validates :parent_last_name, presence: true
  validates :phone, presence: true, format: { with: /\A\d{10}\z/, message: "must be a valid 10-digit phone number" }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }

  def strip_phone_number
    self.phone = phone.to_s.gsub(/[-() ]/, "")
  end


end
