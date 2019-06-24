class Complaint < ApplicationRecord
  # byebug
  validates :mechenic,presence: true
  validates :createdby,presence: true
  validates :dealer,presence: true
  validates :product_name,presence: true
  validates :complaint_status,presence: true
  validates :warranty,presence: true
  validates :call_history,presence: true
  # validates :site_address,presence: true
  # validates :coustomer_address,presence: true
  # validates :coustomer_phone,presence: true
  # validates :coustomer_phone, format: { with: /\d{10}/,message: "only allows 10 digits" }
   self.per_page = 10
end
