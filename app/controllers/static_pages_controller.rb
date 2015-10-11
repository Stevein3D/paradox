class StaticPagesController < ApplicationController
  require 'time'
  def index
    @today = Time.now
  	@taglines = Tagline.all

    # if Event.exists?(event_month: Time.now.mon.to_i, event_day: Time.now.day.to_i)
    #   @events = Event.where("event_month = ? and event_day = ?", 
    #                    Time.now.mon.to_i, Time.now.day.to_i)
    # else
    if Title.exists?(release_month: Time.now.mon.to_i, release_day: Time.now.day.to_i)
      @events = Title.where("release_month = ? and release_day = ?", 
                       Time.now.mon.to_i, Time.now.day.to_i)
    else
    end

    if Person.exists?(birth_month: Time.now.mon.to_i, birth_day: Time.now.day.to_i)
      @births = Person.where("birth_month = ? and birth_day = ?", 
                       Time.now.mon.to_i, Time.now.day.to_i)
    else
    end

    if Person.exists?(death_month: Time.now.mon.to_i, death_day: Time.now.day.to_i)
      @deaths = Person.where("death_month = ? and death_day = ?", 
                       Time.now.mon.to_i, Time.now.day.to_i)
    else
    end

    if !@deaths.nil?
      @events = @events + @deaths
    end

    if !@births.nil?
      @events = @events + @births
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
