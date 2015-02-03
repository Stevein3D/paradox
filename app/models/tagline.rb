class Tagline < ActiveRecord::Base
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      tagline_hash = row.to_hash # exclude the price field
      tagline = Tagline.where(id: tagline_hash["line"])

      if tagline.count == 1
        tagline.first.update_attributes(tagline_hash)
      else
        Tagline.create!(tagline_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # end self.import(file)
end
