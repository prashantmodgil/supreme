class AddInstockToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :instock, :string
    add_column :complaints, :close_date, :datetime
  end
end
