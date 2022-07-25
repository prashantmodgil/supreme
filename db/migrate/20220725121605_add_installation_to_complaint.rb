class AddInstallationToComplaint < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :installation, :boolean, default: :false
  end
end
