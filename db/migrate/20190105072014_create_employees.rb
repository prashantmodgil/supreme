class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :contact
      t.string :address

      t.timestamps
    end
  end
end
