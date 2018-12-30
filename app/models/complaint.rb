class Complaint < ApplicationRecord
  validates :coustomer_phone, format: { with: /\d{10}/,
    message: "only allows 10 digits" }
end
