class TaglinesController < ApplicationController
  def index
  	@taglines = Tagline.all
  end

  def import
  	Tagline.import(params[:file])
    redirect_to root_url, notice: "Taglines added."
  end
end
