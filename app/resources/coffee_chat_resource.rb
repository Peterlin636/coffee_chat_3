class CoffeeChatResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :company_name, :string
  attribute :consultant_name, :string
  attribute :office, :string
  attribute :title, :string
  attribute :date, :date
  attribute :time, :string
  attribute :purpose, :string
  attribute :location, :string

  # Direct associations

  # Indirect associations
end
