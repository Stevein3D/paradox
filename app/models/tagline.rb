class Tagline < ActiveRecord::Base
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding: 'windows-1251:utf-8') do |row|

      tagline_hash = row.to_hash # exclude the price field
      tagline = Tagline.where(id: tagline_hash["id"])

      if tagline.count == 1
        tagline.first.update_attributes(tagline_hash)
      else
        Tagline.create!(tagline_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # end self.import(file)
end

# tagline 310 did not import - 310,The Librarian: Return to King Solomon’s Mines, New Continent. New Adventure. Still No Clue.