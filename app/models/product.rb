class Product < ApplicationRecord
  validates :brand ,presence: true
  validates :name , uniqueness:{scope: :brand, message: "and brand combination should be unique"}

  def self.to_csv
    attributes = %w{id name brand}
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |prod|
        csv << attributes.map{ |attr| prod.send(attr) }
      end
    end
  end
end
