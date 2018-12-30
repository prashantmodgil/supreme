class Brand < ApplicationRecord
  # has_many :products, dependent: :destroy
  validates :brand_name, uniqueness: true
end
