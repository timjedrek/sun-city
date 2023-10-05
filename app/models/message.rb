class Message < ApplicationRecord
  before_validation :strip_phone_number
  after_save :to_monday
  
  validates :name, presence: true
  validates :body, presence: { message: "Tell us how we can help" }
  validates :phone, presence: true, format: { with: /\A\d{10}\z/, message: "must be a valid 10-digit phone number" }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }

  def strip_phone_number
    self.phone = phone.to_s.gsub(/[-() ]/, "")
  end


  def to_monday
    api_key = ENV['monday_api_key']

    # Sun City Lead Board = 3536260889
    # RRM Test Lead Board = 5264643666
    query = 'mutation ($myItemName: String!, $columnVals: JSON!) {
      create_item (board_id: 3536260889, item_name: $myItemName, column_values: $columnVals) {
        id
      }
    }'

    vars = {
      myItemName: self.name,
      columnVals: {
        "lead_email": { "text": "#{self.email}",  "email": "#{self.email}" },
        "lead_phone": { "text": "#{self.phone}",  "phone": "#{self.phone}", "countryShortName": "US" },
        "long_text": "Generated from website contact form.  Message body: #{self.body}"
      }.to_json
    }

    url = 'https://api.monday.com/v2'
    headers = {
      'Authorization' => api_key,
      'Content-Type' => 'application/json',
    }
    body = {
      query: query,
      variables: vars
    }
    response = HTTParty.post(url, headers: headers, body: body.to_json)

    if response.code == 200
      parsed_response = JSON.parse(response.body)
      lead_id = parsed_response["data"]["create_item"]["id"]
      puts "Lead created with ID: #{lead_id}"
    else
      puts "Request failed with status code: #{response.code}, message: #{response.message}"
    end
  end

  
end
