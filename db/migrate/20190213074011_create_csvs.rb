class CreateCsvs < ActiveRecord::Migration[5.2]
  
 def change
    create_table :data_tests do |t|
      t.string :name
      t.string :address
      t.text :url
      t.timestamps
    end
  end

    def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      obj = new
      obj.attributes = row.to_hash.slice(*updatable_attributes)

      obj.save!
    end
  end

  def self.updatable_attributes
    ["name","address","url"]
  end


end
