class EmailWorkerJob
  include Sidekiq::Job
  sidekiq_options retry: false
  def perform(event_id)
    # Do something
    #debugger
    event = Event.find(event_id)
    event.attendees.each do |attendee|
      #debugger
      if(!attendee.email.nil?)
        EventUpdateMailer.with(attendee: attendee, event: event).event_update.deliver_now
      end
    end
    
  end
end
