csv_text = File.read(Rails.root.join('lib', 'seed', 'products-2021-05-01.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Product.new
  # t.id = row['id']
  t.brand = row['brand']
  t.name = row['name']
  t.save
end
puts "There are now #{Product.count} rows in the product table"

csv_text = File.read(Rails.root.join('lib', 'seed', 'brands-2021-05-01.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  t = Brand.new
  # t.id = row['id']
  t.brand_name = row['brand_name']
  t.save
end
puts "There are now #{Brand.count} rows in the brand table"

csv_text = File.read(Rails.root.join('lib', 'seed', 'dealers-2021-05-01.csv'))
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

csv_text = File.read(Rails.root.join('lib', 'seed', 'mechenics-2021-05-01.csv'))
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