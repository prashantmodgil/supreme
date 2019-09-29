class AddComplaintIdToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :uid, :integer
  end
end
