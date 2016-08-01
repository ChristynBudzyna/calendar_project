class PerformancesController < ApplicationController

def new
@event = Event.find_by( id: params[ :event_id ] )
@performance = Performance.new
  if @event.performances.length >= 1
     @performances = @trip.performances
  end

  if @event.event_complete?
    redirect_to error_path
  end

  end

  def create
    @performance = Performance.create( performance_params )
    @event = Event.find_by( id: params[ :event_id ])
    @event.performances.push( @performance )
  end

 def performance_params
      params.require( :place ).permit( :date, :start_time, :event_id )
    end

end

