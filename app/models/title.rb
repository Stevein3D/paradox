class Title < ActiveRecord::Base
  require 'csv'

  def self.search(search)
    where("medium ILIKE ? OR sub_medium ILIKE ? OR title ILIKE ? OR 
           description ILIKE ? OR country_of_origin ILIKE ? OR genre ILIKE ? OR 
           length ILIKE ? OR mpaa ILIKE ? OR release_date ILIKE ?", 
           "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", 
           "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end


  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding: 'windows-1251:utf-8') do |row|

      title_hash = row.to_hash # exclude the price field
      title = Title.where(id: title_hash["id"])

      if title.count == 1
        title.first.update_attributes(title_hash)
      else
        Title.create!(title_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # end self.import(file)
end
