class EventAttendeesController < ApplicationController
  def new
    @event_attendee = EventAttendee.new(event_attendee_params)
    @event_attendee.save
  end

  private 
  def event_attendee_params 
    debugger
    params.require(:event_attendee).permit(:user_id, :event_id)
  end
end
