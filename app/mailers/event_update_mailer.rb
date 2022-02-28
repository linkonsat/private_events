class EventUpdateMailer < ApplicationMailer
    def event_update
        @event = params[:event]
        @email = params[:attendee].email
                mail(to: @email, subject: 'Event info change')
      end
    
end
