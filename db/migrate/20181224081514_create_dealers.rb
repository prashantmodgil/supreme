class CreateDealers < ActiveRecord::Migration[5.2]
  def change
    create_table :dealers do |t|
      t.string :dealer_name
      t.string :dealer_contact
      t.string :dealer_address

      t.timestamps
    end
  end
end
