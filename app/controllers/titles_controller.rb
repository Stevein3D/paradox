class TitlesController < ApplicationController
  before_action :admin_user,     only: :destroy

  def index
    @titles = Title.all
      if params[:search]
    	@titles = Title.search(params[:search], params[:page])
  	  else
    	@titles = Title.paginate(page: params[:page], :per_page => 20)
  	end
  end 

  def show
    @title = Title.find(params[:id])
  end

  def destroy
    Title.find(params[:id]).destroy
    flash[:success] = "Title deleted"
    redirect_to titles_url
  end

  def import
  	Title.import(params[:file])
  	redirect_to titles_url, notice: "File imported."
  end
end
