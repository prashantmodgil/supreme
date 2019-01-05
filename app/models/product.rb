class Product < ApplicationRecord
  validates :brand ,presence: true
  validates :name , uniqueness:{scope: :brand, message: "and brand combination should be unique"}
end
