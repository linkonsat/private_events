class Event < ApplicationRecord
    belongs_to :user
    has_many :event_attendees, foreign_key: :event_id
    has_many :user_id, through: :event_attendees
end
