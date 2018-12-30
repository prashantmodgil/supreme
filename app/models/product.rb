class Product < ApplicationRecord
  # belongs_to :brand
  validates :name , uniqueness:{scope: :brand, message: "and brand combination should be unique"}
end
