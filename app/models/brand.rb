class Brand < ApplicationRecord
  # has_many :products, dependent: :destroy
  validates :brand_name, uniqueness: true

  def self.to_csv
    attributes = %w{id brand_name}
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |dlr|
        csv << attributes.map{ |attr| dlr.send(attr) }
      end
    end
  end
end
