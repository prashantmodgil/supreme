# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# csv_text = File.read(Rails.root.join('lib', 'seed', 'complaints-2020-07-06.csv'))
# csv = CSV.parse(csv_text, :headers => true)
# csv.each do |row|
#   t = Complaint.new
#   # t.id = row['id']
#   t.call_date = row['call_date']
#   t.dealer = row['dealer']
#   t.product_name = row['product_name']
#   t.fault = row['fault']
#   t.complaint_status = row['complaint_status']
#   t.call_history = row['call_history']
#   t.warranty = row['warranty']
#   t.mechenic = row['mechenic']
#   t.site_address = row['site_address']
#   t.coustomer_name = row['coustomer_name']
#   t.coustomer_address = row['coustomer_address']
#   t.coustomer_city = row['coustomer_city']
#   t.coustomer_phone = row['coustomer_phone']
#   t.product_sr_no = row['product_sr_no']
#   t.purchase_date = row['purchase_date']
#   t.createdby = row['createdby']
#   t.instock = row['instock']
#   t.close_date = row['close_date']
#   t.description = row['description']
#   t.uid = row['uid']
#   t.save
# end
# puts "There are now #{Complaint.count} rows in the complaint table"
