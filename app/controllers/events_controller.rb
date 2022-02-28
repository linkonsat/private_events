class EventsController < ApplicationController
    def index
        @events = Event.all
        @past_events = Event.past_events
        @future_events = Event.future_events
    end
    def new
        @event = Event.new
        if(Event.all.empty?)
            @event_id = 1 
        else
        @event_id = Event.last.id + 1
        end
        @event.build_event_option
    end

    def show 
        @event = Event.where("id = ?", params[:id])
    end
    def create 
        @event = Event.new(event_params)
        @event.save!
        redirect_to @event
    end

    def all_events 
        @event = Event.all 
    end

    def attended_events 
        @attended_events = EventAttendee.where("id = ?", current_user[:id])
    end
    def edit 
        @event = Event.find(params[:id])
        @event_invite = EventInvite.new
    end

    def update
        @event = Event.find(params[:id])
        if @event.update(event_params) 
           EmailWorkerJob.perform_async(params[:id])
        end
    end

    def destroy 
        @event = Event.find(params[:id])
        @event.destroy 
        redirect_to root_path, status: :see_other   
    end 
    def created_events
        @created_events = Event.where("user_id =?", current_user[:id])
    end

    private 
    def event_params
        params.require(:event).permit(:name, :description, :creator, :event_date, :event_end_date, :user_id, event_option_attributes: [:maximum_guests, :private, :reoccuring, :event_id])
    end
end
