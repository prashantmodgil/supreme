class Dealer < ApplicationRecord
    validates :dealer_name, uniqueness: true
    validates :dealer_contact, format: { with: /\d{10}/,
      message: "only allows 10 digits" }

  def self.to_csv
    attributes = %w{id dealer_name dealer_contact dealer_address}
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |dlr|
        csv << attributes.map{ |attr| dlr.send(attr) }
      end
    end
  end
end
