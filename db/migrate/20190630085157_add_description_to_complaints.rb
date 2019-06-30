class AddDescriptionToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :description, :text
  end
end
