class Person < ActiveRecord::Base
  require 'csv'

  # def self.search(search)
  #   where("paradox_name ILIKE ? OR brief ILIKE ?", "%#{search}%", "%#{search}%")
  # end


  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding: 'windows-1251:utf-8') do |row|

      person_hash = row.to_hash # exclude the price field
      person = Person.where(id: person_hash["id"])

      if person.count == 1
        person.first.update_attributes(person_hash)
      else
        Person.create!(person_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # end self.import(file)
end
