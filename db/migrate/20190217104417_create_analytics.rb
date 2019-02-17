class CreateAnalytics < ActiveRecord::Migration[5.2]
  def change
    create_table :analytics do |t|

      t.timestamps
    end
  end
end
