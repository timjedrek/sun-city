json.extract! camp, :id, :attendee_first_name, :attendee_last_name, :attendee_age, :phone, :email, :parent_first_name, :parent_last_name, :camp_date, :comments, :created_at, :updated_at
json.url camp_url(camp, format: :json)
