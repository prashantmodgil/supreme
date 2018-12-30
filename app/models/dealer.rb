class Dealer < ApplicationRecord
    validates :dealer_name, uniqueness: true
    validates :dealer_contact, format: { with: /\d{10}/,
      message: "only allows 10 digits" }
end
