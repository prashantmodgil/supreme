class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sr_number
      t.string :brand

      t.timestamps
    end
  end
end
