class StaticPagesController < ApplicationController
  require 'time'
  def index
  	@tagline = Tagline.offset(rand(Tagline.count)).first
    @today_in_time = Event.where("today_month = ? and today_day = ?", 
                     Time.now.mon.to_i, Time.now.day.to_i).first
  end

  def blog
  end

  def contact
  end

  def paradox_people
  end

  def paradox_news
  end

  def paradoxes
  end
  
end
