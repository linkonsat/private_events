class EventUpdateMailer < ApplicationMailer
    def event_update(params)
        @emails = params[:emails]
        @emails.each do |email|
                mail(to: email, subject: 'Event info change')
        end

      end
    
end
