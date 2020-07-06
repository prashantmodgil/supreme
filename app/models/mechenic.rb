class Mechenic < ApplicationRecord
  validates :mec_name , uniqueness: true
  validates :mobile_num_1,format: { with: /\d{10}/,
    message: "only allows 10 digits" }
  validates :mobile_num2,format: { with: /\d{10}/,
    message: "only allows 10 digits" }

  def self.to_csv
    attributes = %w{id mec_name email mobile_num_1 mobile_num2 address district}
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |mech|
        csv << attributes.map{ |attr| mech.send(attr) }
      end
    end
  end
end
