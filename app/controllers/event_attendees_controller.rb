class EventAttendeesController < ApplicationController
  def new 
    @event_attendee = EventAttendee.new
  end
end
