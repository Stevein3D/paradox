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

    @welcomeText = ["Your gateway to the 4th dimension...", "It's all in the mind, you know...",
                    "Your one stop for this sort of thing!", "Your Time Travel Agency...",
                    "If you’re confused and off-balance – you are home...", 
                    "Take a number.  We’ll be with you between now and eternity...",
                    "Your home for illusion, delusion, and confusion...", "Where infinity begins and ends...",
                    "The Land Beyond The Land Beyond...", "Where it’s always now, now...",
                    "Welcome to Never Say Never Land!", "Nowhere is now here!", 
                    "Just two blocks north of the middle of nowhere...", 
                    "Keep your hands outside the vehicle at all times", "Bridge Out (back in 15 minutes)"]
    
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

  
end
