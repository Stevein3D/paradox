class TitlesController < ApplicationController

  def index
    @titles = Title.all
      if params[:search]
    	@titles = Title.search(params[:search])
  	  else
    	@titles = Title.all
  	end
    @titles = Title.paginate(page: params[:page], :per_page => 20)
  end 

  def import
  	Title.import(params[:file])
  	redirect_to titles_url, notice: "File imported."
  end
end
