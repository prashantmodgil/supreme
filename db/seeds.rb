Dir.entries(Rails.root.join('lib', 'seed','app4')).each do |file|
  next if File.directory? file
  csv_text = File.read(Rails.root.join('lib', 'seed','app4', file))
  csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      begin
        t = Complaint.new
        t.uid = row['COM NO']
        t.call_date = row['DATE']
        t.dealer = row['DEALER']
        t.product_name = row['MODEL']
        t.fault = row['FAULT']
        t.complaint_status = row['STATUS']
        t.warranty = "within warranty"
        t.mechenic = row['MACHANIC']
        if row['SITE ADDRESS'] == "COS ADDRESS"
          t.site_address = "Coustomer address"
        else 
          t.site_address = "On counter"
        end
        t.coustomer_name = row['CUSTOMER NAME']
        t.coustomer_address = row['ADDRESS']
        # t.coustomer_city = row['coustomer_city']
        t.coustomer_phone = row['CONTACT']
        t.product_sr_no = row['SERIAL NO']
        t.purchase_date = row['DOP']
        t.createdby = "script"
        t.call_history = "fresh"
        t.save!
    rescue =>e
        print [file,t.uid,t.call_date,t.errors.messages]
        puts (e)
    end
  end
end
puts "There are now #{Complaint.where(createdby: "script").count} rows in the complaints table"
