class DoxesController < ApplicationController
  def index
   	@doxes = Dox.all
      if params[:search]
    	@doxes = Dox.search(params[:search])
  	  else
    	@doxes = Dox.all
  	end
  end 

  def import
  	Dox.import(params[:file])
  	redirect_to doxes_url, notice: "Paradoxes imported."
  end
end
