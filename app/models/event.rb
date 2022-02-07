class Event < ApplicationRecord
    has_many :event_attendees, foreign_key: :event_id
    has_many :attendees, through: :event_attendees
    belongs_to :user
end
