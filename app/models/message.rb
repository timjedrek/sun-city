class Message < ApplicationRecord
  before_validation :strip_phone_number
  #after_save :to_monday
  
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
    query = 'mutation ($myItemName: String!, $columnVals: JSON!) { create_item (board_id: 5264643666, group_id: topics item_name: $myItemName, column_values: $columnVals) { id } }'

    vars = {
      myItemName: self.name,
      columnVals: ({
        "lead_email": { "text": "#{self.email}",  "email": "#{self.email}" },
        "lead_phone": { "text": "#{self.phone}",  "phone": "#{self.phone}", "countryShortName": "US" },
        "text5": "TESTING 123",
      }).to_json
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
      puts JSON.pretty_generate(parsed_response)
    else
      puts "Request failed with status code: #{response.code}, message: #{response.message}"
    end
  end
  
end
