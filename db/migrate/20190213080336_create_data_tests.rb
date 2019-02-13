class CreateDataTests < ActiveRecord::Migration[5.2]
  def change
    create_table :data_tests do |t|
      t.string :name
      t.string :address
      t.text :url
      t.timestamps
    end
    end
end
