# frozen_string_literal: true

class EventAttendee < ApplicationRecord
  belongs_to :attendee, class_name: 'User'
  belongs_to :event
  validate :one_user_signup
  scope :signed_up_user?, lambda { |params|
                            where('event_id = ?', params[:event_id]).and(where('attendee_id = ?', params[:attendee_id]))
                          }

  def one_user_signup
    sign_up = EventAttendee.where('event_id = ?',
                                  event_id).and(EventAttendee.where('attendee_id = ?', attendee_id))
    errors.add(:already_signed_up, 'You are already signed up for this event') unless sign_up.empty?
  end
end
