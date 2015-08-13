class Person < ActiveRecord::Base
  require 'csv'

  def self.search(search, page)
    order('full_name').where("cast(people_index as text) ILIKE ? OR full_name ILIKE ? OR birth_date ILIKE ? OR 
           death_date ILIKE ? OR primary_skill ILIKE ? OR biography ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", 
           "%#{search}%", "%#{search}%", "%#{search}%").paginate(page: page, per_page: 20)
  end

  def age
    Date.today.year - self.birth_year
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding: 'windows-1251:utf-8') do |row|

      person_hash = row.to_hash # exclude the price field
      person = Person.where(people_index: person_hash["people_index"])

      if person.count == 1
        person.first.update_attributes(person_hash)
      else
        Person.create!(person_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # end self.import(file)
end
