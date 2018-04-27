json.extract! registration, :id, :full_name, :company, :telephone, :email, :age, :address, :sex, :birthday, :created_at, :updated_at
json.url registration_url(registration, format: :json)
