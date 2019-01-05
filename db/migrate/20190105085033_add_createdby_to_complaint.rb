class AddCreatedbyToComplaint < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :createdby, :string
  end
end
