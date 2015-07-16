class StaticPagesController < ApplicationController
  require 'time'
  def index
  	@tagline = Tagline.offset(rand(Tagline.count)).first

    if Event.exists?(event_month: Time.now.mon.to_i, event_day: Time.now.day.to_i)
      @events = Event.where("event_month = ? and event_day = ?", 
                       Time.now.mon.to_i, Time.now.day.to_i)
    else
    end
    
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
