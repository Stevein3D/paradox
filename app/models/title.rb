class Title < ActiveRecord::Base
  require 'csv'

  scope :action, -> {where("genre ILIKE ?", "%ACT%")}

  def self.search(search, page)
    order("title_sort ASC, season_num ASC, episode_num ASC").where("cast(title_index as text) ILIKE ? OR medium ILIKE ? OR sub_medium ILIKE ? OR title ILIKE ? OR 
                          description ILIKE ? OR country ILIKE ? OR genre ILIKE ? OR length ILIKE ? OR mpaa ILIKE ? OR
                          release_date ILIKE ? OR cast(season_num as text) ILIKE ? OR cast(episode_num as text) ILIKE ? OR
                          episode ILIKE ? OR title_sort ILIKE ?", 
                          "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", 
                          "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", 
                          "%#{search}%", "%#{search}%").paginate(page: page, per_page: 20)
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding: 'windows-1251:utf-8') do |row|

      title_hash = row.to_hash # exclude the price field
      title = Title.where(title_index: title_hash["title_index"])

      if title.count == 1
        title.first.update_attributes(title_hash)
      else
        Title.create!(title_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # end self.import(file)

  def releases?
    self.exists?(release_month: Time.now.mon.to_i, release_day: Time.now.day.to_i)
  end
end
