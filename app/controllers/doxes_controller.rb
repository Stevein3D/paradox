class DoxesController < ApplicationController
  def index
   	@doxes = Dox.all
      if params[:search]
    	@doxes = Dox.search(params[:search], params[:page])
  	  else
    	@doxes = Dox.all.paginate(page: params[:page], :per_page => 15)
  	end
  end 

  def destroy
    Dox.find(params[:id]).destroy
    flash[:success] = "Paradox deleted"
    redirect_to doxes_url
  end

  def import
  	Dox.import(params[:file])
  	redirect_to doxes_url, notice: "Paradoxes imported."
  end
end
