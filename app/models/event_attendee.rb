# frozen_string_literal: true

class EventAttendee < ApplicationRecord
  belongs_to :attendee, class_name: 'User'
  belongs_to :event
  validate :one_user_signup

    def one_user_signup 
      sign_up = EventAttendee.where('event_id = ?', self.event_id).and(EventAttendee.where('attendee_id = ?', self.attendee_id))
      if(!sign_up.empty?)
        errors.add(:already_signed_up, 'You are already signed up for this event')
      end
    end
end
