class EventsController < ApplicationController
  before_action :admin_user,     only: [:destroy, :update, :patch]

  def index
    @events = Event.all
      if params[:search]
    	@events = Event.search(params[:search], params[:page])
  	  else
    	@events = Event.paginate(page: params[:page])
  	end
  end 

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def destroy
    Event.find(params[:id]).destroy
    flash[:success] = "event deleted"
    redirect_to events_url
  end

  def import
  	Event.import(params[:file])
  	redirect_to events_url, notice: "events File Imported."
  end


  def update
    @event = Event.find(params[:id])
      
    if @event.update(event_params)
        flash[:success] = "Entry updated!"
      redirect_to @event
    else
      render 'edit'
    end
  end
 
  private
    def event_params
      params.require(:event).permit(:event_year, :event_century, :event_month, :event_day, :event_minute, :event_second, :event_period, 
      								:event_to, :event_location, :event_historical_event, :event_person, :event_blurb)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

end
