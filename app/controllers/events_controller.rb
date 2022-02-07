class EventsController < ApplicationController
    def index
    end
    def new
        @event = Event.new
    end

    def show 
        @event = Event.where("id = ?", params[:id])
    end
    def create 
        @event = Event.new(event_params)
        @event.save!
        redirect_to @event
    end
    def index
    end

    def all_events 
        @event = Event.all
    end

    def attended_events 
        @attended_events = EventAttendee.where("id = ?", current_user[:id])
        debugger
    end
    private 
    def event_params
        params.require(:event).permit(:name, :description, :creator, :event_date, :event_end_date, :user_id)
    end

end
