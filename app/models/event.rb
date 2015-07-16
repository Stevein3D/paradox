class Event < ActiveRecord::Base
  require 'csv'

  def self.search(search)
    where("full_name ILIKE ? OR today_date ILIKE ? OR event ILIKE ? OR 
           medium ILIKE ? OR blurb ILIKE ?", 
           "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end


  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding: 'windows-1251:utf-8') do |row|

      event_hash = row.to_hash
      event = Event.where(event_index: event_hash["event_index"])

      if event.count == 1
        event.first.update_attributes(event_hash)
      else
        Event.create!(event_hash)
      end 
    end 
  end
end
