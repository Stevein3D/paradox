class EventsController < ApplicationController
  def index
   	@events = Event.all
      if params[:search]
    	@events = Event.search(params[:search], params[:page])
  	  else
    	@events = Event.all.paginate(page: params[:page], :per_page => 20)
  	end
  end 

  def import
  	Event.import(params[:file])
  	redirect_to events_url, notice: "File imported."
  end
end
