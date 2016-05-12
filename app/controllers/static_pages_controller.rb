class StaticPagesController < ApplicationController
  require 'time'

  

  def index
    @today = Time.now
  	@taglines = Tagline.all
    @releases = Title.where("release_month = ? and release_day = ?", Time.now.mon.to_i, Time.now.day.to_i)
    @births = Person.where("birth_month = ? and birth_day = ?", Time.now.mon.to_i, Time.now.day.to_i)
    @deaths = Person.where("death_month = ? and death_day = ?", Time.now.mon.to_i, Time.now.day.to_i)

    @montages = Vimeo::Simple::Album.videos("3931279")

    @tits = Title.none
    if !@releases.nil?
      @tits = @tits + @releases
    end

    if !@deaths.nil?
      @tits = @tits + @deaths
    end

    if !@births.nil?
      @tits = @tits + @births
    end
    
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

  def paradox_people
  end

  def paradox_news
  end

  def tits
    
  end
  
end
