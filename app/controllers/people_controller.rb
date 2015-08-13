class PeopleController < ApplicationController
  def index
   	@people = Person.all.order('full_name')
      if params[:search]
    	@people = Person.search(params[:search], params[:page])
  	  else
    	@people = Person.paginate(page: params[:page], :per_page => 20)
  	end
  end 

  def import
  	Person.import(params[:file])
  	redirect_to people_url, notice: "Paradoxes imported."
  end
end
