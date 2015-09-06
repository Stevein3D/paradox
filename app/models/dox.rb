class Dox < ActiveRecord::Base
  require 'csv'

  def self.search(search, page)
    order('dox').where("cast(paradox_index as text) ILIKE ? OR cast(discovery_date as text) ILIKE ? OR paradox_name ILIKE ? OR paradox ILIKE ? OR 
                        brief ILIKE ? OR full_description ILIKE ? OR owner ILIKE ? OR example ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%",
                         "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%").paginate(page: page, per_page: 20)
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
