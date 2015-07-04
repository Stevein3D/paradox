class EventsController < ApplicationController
  def index
   	@events = Event.all
      if params[:search]
    	@events = Event.search(params[:search])
  	  else
    	@events = Event.all
  	end
  end 

  def import
  	Event.import(params[:file])
  	redirect_to events_url, notice: "File imported."
  end
end
