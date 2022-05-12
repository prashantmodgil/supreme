csv_text = File.read(Rails.root.join('lib', 'seed','app4', 'products-2021-05-01.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Product.new
  # t.id = row['id']
  t.brand = row['brand']
  t.name = row['name']
  t.save
end
puts "There are now #{Product.count} rows in the product table"

csv_text = File.read(Rails.root.join('lib', 'seed','app4', 'brands-2021-05-01.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Brand.new
  # t.id = row['id']
  t.brand_name = row['brand_name']
  t.save
end
puts "There are now #{Brand.count} rows in the brand table"

csv_text = File.read(Rails.root.join('lib', 'seed', 'app4','dealers-2021-05-01.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Dealer.new
  # t.id = row['id']
  t.dealer_name = row['dealer_name']
  t.dealer_contact = row['dealer_contact']
  t.dealer_address = row['dealer_address']
  t.save
end
puts "There are now #{Dealer.count} rows in the dealer table"

csv_text = File.read(Rails.root.join('lib', 'seed', 'app4','mechenics-2021-05-01.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Mechenic.new
  # t.id = row['id']
  t.mec_name = row['mec_name']
  t.email = row['email']
  t.mobile_num_1 = row['mobile_num_1']
  t.mobile_num2 = row['mobile_num2']
  t.address = row['address']
  t.district = row['district']
  t.save
end
puts "There are now #{Mechenic.count} rows in the mechenic table"

csv_text = File.read(Rails.root.join('lib', 'seed','app4', 'complaints-2021-12-23.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Complaint.new
  t.id = row['id']
  t.uid = row['uid']
  t.call_date = row['call_date']
  t.dealer = row['dealer']
  t.product_name = row['product_name']
  t.fault = row['fault']
  t.complaint_status = row['complaint_status']
  t.warranty = row['warranty']
  t.mechenic = row['mechenic']
  t.site_address = row['site_address']
  t.coustomer_name = row['coustomer_name']
  t.coustomer_address = row['coustomer_address']
  t.coustomer_city = row['coustomer_city']
  t.coustomer_phone = row['coustomer_phone']
  t.product_sr_no = row['product_sr_no']
  t.purchase_date = row['purchase_date']
  t.createdby = row['createdby']
  t.call_history = row['call_history']
  t.save!
end
puts "There are now #{Complaint.count} rows in the mechenic table"

e = Employee.new
e.email = "poonam@supreme.biz"
e.password = "poonam"
e.password_confirmation = "poonam"
e.contact = "1234567890"
e.save!