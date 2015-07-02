class PeopleController < ApplicationController
  def index
   	@people = Person.all
      if params[:search]
    	@people = Person.search(params[:search])
  	  else
    	@people = Person.all
  	end
  end 

  def import
  	Person.import(params[:file])
  	redirect_to people_url, notice: "Paradoxes imported."
  end
end
