json.extract! coffee_chat, :id, :company_name, :consultant_name, :office, :title, :date, :time, :purpose, :location, :created_at, :updated_at
json.url coffee_chat_url(coffee_chat, format: :json)
