class Event < ApplicationRecord
    has_many :event_attendees, foreign_key: :event_id
    has_many :attendees, through: :event_attendees
    belongs_to :user
    scope :future_events, -> { where('event_end_date > ?', Time.now) }
    scope :past_events, -> { where('event_end_date < ?', Time.now) }
end
