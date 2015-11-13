class StaticPagesController < ApplicationController
  require 'time'

  

  def index
    @today = Time.now
  	@taglines = Tagline.all
    @releases = Title.where("release_month = ? and release_day = ?", Time.now.mon.to_i, Time.now.day.to_i)
    @births = Person.where("birth_month = ? and birth_day = ?", Time.now.mon.to_i, Time.now.day.to_i)
    @deaths = Person.where("death_month = ? and death_day = ?", Time.now.mon.to_i, Time.now.day.to_i)

    @events = Title.none
    if !@releases.nil?
      @events = @events + @releases
    end

    if !@deaths.nil?
      @events = @events + @deaths
    end

    if !@births.nil?
      @events = @events + @births
    end
    
  end

  def contact
  end

  def paradox_people
  end

  def paradox_news
  end

  def events
    
  end
  
end
