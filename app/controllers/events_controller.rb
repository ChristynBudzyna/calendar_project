class EventsController < ApplicationController

def index
  @performances = Performance.joins(:event).where(:events => {:approved => true})
  @date = params[:month] ? Date.parse(params[:month]) : Date.today
  @todays_performances= @performances.where(date: @date)
end

def show
  @event = Event.find_by(id: params[:id])
  @favorite = Favorite.new

  if request.xhr?
      render :partial => 'eventpreview', layout: false, locals:{event: @event}
    end
end

def new
  @event = Event.new
end

def create
  @event = Event.new(event_params)
  if @event.save
    redirect_to thankyou_path( @event )
  else
    render "events#new"
  end
end

def edit
  @event = Event.find(params[:id])
end

def update
   @event = Event.find(params[:id])
   if @event.update_attributes(event_params)
    redirect_to @event
  else
    render 'edit'
  end
end

def destroy
  Event.find(params[:id]).destroy
    flash[:success] = "Event deleted"
    redirect_to root_path

end

 private
    def event_params
      params.require( :event ).permit( :title, :writers, :venue, :performers, :description, :price_range, :ticket_link, :image, :video_link, :approved, performances_attributes: [:date, :start, :_destroy])
    end

    # def performance_params
    #   params.require( :performance ).permit(:start_time, :end_time, :date)
    # end
end
