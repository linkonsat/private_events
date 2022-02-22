class EventInvitesController < ApplicationController

    def new
        #debugger
        @invite = EventInvite.new
    end

    def create 
        #debugger
        @invite = EventInvite.new(invite_params)
        #debugger
        @invite.save!
        redirect_back_or_to "/events/#{event_id_param}/edit"
    end 
    def invite_params
        #debugger
        params.require(:event_invite).permit(:invitee_id, :event_id, :creator_id, :accepted)
    end

    def event_id_param
        params.require(:event_invite).permit(:event_id)
    end
end
