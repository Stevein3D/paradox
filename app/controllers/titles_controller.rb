class TitlesController < ApplicationController
  before_action :admin_user,     only: [:destroy, :update, :patch]

  def index
    @titles = Title.all
      if params[:search]
    	@titles = Title.search(params[:search], params[:page])
  	  else
    	@titles = Title.paginate(page: params[:page], :per_page => 15)
  	end
  end 

  def show
    @title = Title.find(params[:id])
  end

  def edit
    @title = Title.find(params[:id])
  end

  def destroy
    Title.find(params[:id]).destroy
    flash[:success] = "Title deleted"
    redirect_to titles_url
  end

  def import
  	Title.import(params[:file])
  	redirect_to titles_url, notice: "Titles File Imported."
  end


  def update
    @title = Title.find(params[:id])
      
    if @title.update(title_params)
        flash[:success] = "Entry updated!"
      redirect_to @title
    else
      render 'edit'
    end
  end
 
  private
    def title_params
      params.require(:title).permit(:title, :medium, :sub_medium, :country, :genre, :length, :mpaa, :description, :release_date, :release_day, 
                                    :release_month, :release_year, :episode, :episode_num, :season_num, :title_sort, :series_index)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

end