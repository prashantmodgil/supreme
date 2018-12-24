class CreateMechenics < ActiveRecord::Migration[5.2]
  def change
    create_table :mechenics do |t|
      t.string :mec_name
      t.string :email
      t.string :mobile_num_1
      t.string :mobile_num2
      t.string :address
      t.string :district

      t.timestamps
    end
    add_index :mechenics, :mec_name, unique: true
  end
end
