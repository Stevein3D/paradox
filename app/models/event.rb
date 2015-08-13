class Event < ActiveRecord::Base
  require 'csv'

  def self.search(search, page)
    order('event').where("cast(people_index as text) ILIKE ? OR cast(title_index as text) ILIKE ? OR cast(event_index as text) ILIKE ? 
                         OR event ILIKE ? OR event_date ILIKE ? OR event_message ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%",
                         "%#{search}%", "%#{search}%", "%#{search}%").paginate(page: page, per_page: 20)
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
