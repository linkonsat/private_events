# frozen_string_literal: true

class EmailWorkerJob
  include Sidekiq::Job
  sidekiq_options retry: false
  def perform(event_id)
    event = Event.find(event_id)
    event.attendees.each do |attendee|
      EventUpdateMailer.with(attendee: attendee, event: event).event_update.deliver_now unless attendee.email.nil?
    end
  end
end
