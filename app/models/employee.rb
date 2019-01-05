class Employee < ApplicationRecord
  validates :name , uniqueness: true
  validates :contact,format: { with: /\d{10}/,
    message: "only allows 10 digits" }
end
