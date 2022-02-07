class EventAttendeesController < ApplicationController
  def new
    
    @event_attendee = EventAttendee.new(event_attendee_params)
    debugger
    @event_attendee.save
  end

  private 
  def event_attendee_params 
    params.permit(:attendee_id, :event_id)
  end
end
