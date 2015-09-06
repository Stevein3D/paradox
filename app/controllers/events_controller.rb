class EventsController < ApplicationController
  def index
   	@events = Event.all
      if params[:search]
    	@events = Event.search(params[:search], params[:page])
  	  else
    	@events = Event.all.paginate(page: params[:page], :per_page => 15)
  	end
  end 

  def show
    @event = Event.find(params[:id])
  end

  def destroy
    Event.find(params[:id]).destroy
    flash[:success] = "Event deleted"
    redirect_to events_url
  end

  def import
  	Event.import(params[:file])
  	redirect_to events_url, notice: "File imported."
  end
end
