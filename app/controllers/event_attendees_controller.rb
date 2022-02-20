class EventAttendeesController < ApplicationController
  def new
    
    @event_attendee = EventAttendee.new(event_attendee_params)
    debugger
    @event_attendee.save
  end

  def destroy
    @attendee = EventAttendee.where("attendee_id = ?",params[:id])
    debugger
    @attendee.first.destroy
    #redirect_to event_edit_path
  end

  private 
  def event_attendee_params 
    params.permit(:attendee_id, :event_id)
  end
end
