class Event < ActiveRecord::Base
  require 'csv'
  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding: 'windows-1251:utf-8') do |row|

      event_hash = row.to_hash # exclude the price field
      event = Event.where(event_index: event_hash["event_index"])

      if event.count == 1
        event.first.update_attributes(event_hash)
      else
        Event.create!(event_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # end self.import(file)
end
