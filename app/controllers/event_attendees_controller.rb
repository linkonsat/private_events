class EventAttendeesController < ApplicationController
  def new
    
    @event_attendee = EventAttendee.new(event_attendee_params)
    if(@event_attendee.save!)
      @event_invite = EventInvite.where("event_id = ?", params[:event_id]).where("invitee_id = ?", params[:attendee_id])
      @event_invite.first.destroy
    end
  end

  def create 
  end

  def destroy
    @attendee = EventAttendee.where("attendee_id = ?",params[:id])
    @attendee.first.destroy
    redirect_back_or_to "/all_invites"
  end

  private 
  def event_attendee_params 
    params.permit(:attendee_id, :event_id)
  end
end
