# frozen_string_literal: true

class EventAttendee < ApplicationRecord
  belongs_to :attendee, class_name: 'User'
  belongs_to :event
  validate :one_user_signup
  scope :signed_up_user?, ->(params) { where('event_id = ?', params[:event_id]).and(where('attendee_id = ?', params[:attendee_id])) }

    def one_user_signup 
      sign_up = EventAttendee.where('event_id = ?', self.event_id).and(EventAttendee.where('attendee_id = ?', self.attendee_id))
      if(!sign_up.empty?)
        errors.add(:already_signed_up, 'You are already signed up for this event')
      end
    end
end
