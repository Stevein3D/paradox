class StaticPagesController < ApplicationController
  def index
  	@tagline = Tagline.offset(rand(Tagline.count)).first
  end

  def blog
  end

  def contact
  end

  def paradoxes
  end

  def paradox_people
  end

  def paradox_news
  end
  
end
