class Mechenic < ApplicationRecord
  validates :mec_name , uniqueness: true
  validates :mobile_num_1,format: { with: /\d{10}/,
    message: "only allows 10 digits" }
  validates :mobile_num2,format: { with: /\d{10}/,
    message: "only allows 10 digits" }
end
