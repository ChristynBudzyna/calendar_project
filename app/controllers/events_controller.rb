class EventsController < ApplicationController

def index
  @performances = Performance.all
  @date = params[:month] ? Date.parse(params[:month]) : Date.today
end

def show
  @event = Event.find_by(id: params[:id])
end

end
