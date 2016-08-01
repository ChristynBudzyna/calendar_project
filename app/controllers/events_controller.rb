class EventsController < ApplicationController

def index
  @performances = Performance.joins(:event).where(:events => {:approved => true})
  @date = params[:month] ? Date.parse(params[:month]) : Date.today
end

def show
  @event = Event.find_by(id: params[:id])
end

def new
  @event = Event.new
  5.times { @event.performances.build }
end

def create
  @event = Event.new(event_params)
  if @event.save
    redirect_to "/thankyou"
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
    binding.pry
    redirect_to @event
  else
    render 'edit'
  end
end


 private
    def event_params
      params.require( :event ).permit( :title, :writers, :venue, :performers, :description, :price_range, :ticket_link, :video_link, :approved, performances_attributes: [:date, :start_time, :end_time])
    end

    # def performance_params
    #   params.require( :performance ).permit(:start_time, :end_time, :date)
    # end
end
