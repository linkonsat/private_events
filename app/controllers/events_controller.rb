class EventsController < ApplicationController
    def index
    end
    def new
        @event = Event.new
    end

    def show 
    end
    def create 
        if @event.save 
           redirect_to action: show, @post 
        end
        
    end
    def index
    end
    private 
    def post_params
        params.require(:event).permit(:name, :description, :creator, :event_date, :event_end_date, :user_id)
    end
end
