class EventUpdateMailer < ApplicationMailer
    def event_update(params)
        @emails = params[:emails]
        @emails.each do |email|
                mail(to: email, subject: 'Booking confirmation')
        end

      end
    
end
