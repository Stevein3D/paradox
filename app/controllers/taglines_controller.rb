class TaglinesController < ApplicationController
  def index
  	@taglines = Tagline.all
  end

  def import
  	Tagline.import(params[:file])
  	redirect_to taglines_url, notice: "Taglines imported."
  end
end
