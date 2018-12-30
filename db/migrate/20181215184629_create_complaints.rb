class CreateComplaints < ActiveRecord::Migration[5.2]
  def change
    create_table :complaints do |t|
      t.datetime :call_date
      t.string :dealer
      t.string :product_name
      t.string :fault
      t.string :complaint_status
      t.string :call_history
      t.string :warranty
      t.string :mechenic
      t.string :site_address
      t.string :coustomer_name
      t.string :coustomer_address
      t.string :coustomer_city
      t.string :coustomer_phone
      t.string :product_sr_no
      t.datetime :purchase_date

      t.timestamps
    end
  end
end
