class Test < ApplicationRecord
  require 'csv'

    def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      p "==============="

      p "==============="
      obj = new
      obj.attributes = row.to_hash.slice(*updatable_attributes)

      obj.save!
    end
  end

  def self.updatable_attributes
    ["name","address","url"]
  end
  
end
