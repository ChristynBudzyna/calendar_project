class FavoritesController < ApplicationController

def new
  @favorite = Favorite.new
end

def create
  @event = Event.find_by(id: params[:event])
  @favorite = Favorite.create( user_id: current_user.id, event_id: params[ :event ] )
  flash[:notice] = "You favorited #{@event.title}"
  redirect_to event_path(@event)
end

def destroy
  @event = Event.find_by(id: params[:event_id])
  @favorite = Favorite.find_by(user_id:current_user.id, event_id: @event.id)
  @favorite.destroy
  flash[:notice] = "You removed #{@event.title} from your favorites"
  redirect_to event_path(@event)
end


end
