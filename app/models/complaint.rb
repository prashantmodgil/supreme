class Complaint < ApplicationRecord
  before_create :check_uid
  validates :mechenic,presence: true
  validates :createdby,presence: true
  validates :dealer,presence: true
  validates :product_name,presence: true
  validates :complaint_status,presence: true
  validates :warranty,presence: true
  validates :call_history,presence: true
  # validates :uid,presence: true
  # validates :site_address,presence: true
  # validates :coustomer_address,presence: true
  # validates :coustomer_phone,presence: true
  # validates :coustomer_phone, format: { with: /\d{10}/,message: "only allows 10 digits" }
   self.per_page = 10
   def check_uid
     self.uid = Complaint.last.uid + 1
   end

   def self.to_csv
     attributes = %w{id call_date dealer product_name fault complaint_status call_history warranty mechenic site_address coustomer_name coustomer_address coustomer_city coustomer_phone product_sr_no purchase_date createdby instock close_date description uid}
     CSV.generate(headers: true) do |csv|
       csv << attributes
       all.each do |cmpl|
         csv << attributes.map{ |attr| cmpl.send(attr) }
       end
     end
   end
end
