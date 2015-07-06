class Dox < ActiveRecord::Base
  require 'csv'

  def self.search(search)
    where("paradox_name ILIKE ? OR brief ILIKE ?", "%#{search}%", "%#{search}%")
  end


  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding: 'windows-1251:utf-8') do |row|

      dox_hash = row.to_hash # exclude the price field
      dox = Dox.where(paradox_index: dox_hash["paradox_index"])

      if dox.count == 1
        dox.first.update_attributes(dox_hash)
      else
        Dox.create!(dox_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # end self.import(file)
end
