class EventsController < ApplicationController

def index
  @performances = Performance.all
  @date = params[:month] ? Date.parse(params[:month]) : Date.today
end

def show
  @event = Event.find_by(id: params[:id])
end

def new
  @event = Event.new
  3.times { @event.performances.build }
end

def create
  @event = Event.new(event_params)
  binding.pry
   if @event.save
      performances.each do |performance|
        @event.performances << Performance.create(performance_params)
      end
    redirect_to "/thankyou"
    end
end

 private
    def event_params
      params.require( :event ).permit( :title, :writers, :venue, :performers, :description, :price_range, :ticket_link, :video_link)
    end

    def performance_params
      params.require( :performance ).permit(:start_time, :end_time, :date, :event_id)
    end
end
