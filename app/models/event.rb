class Event < ApplicationRecord
    has_many :event_attendees, foreign_key: :event_id
    has_many :attendees, through: :event_attendees, dependent: :destroy
    has_one :event_option, dependent: :destroy
    belongs_to :user
    accepts_nested_attributes_for :event_option
    scope :future_events, -> { where('event_end_date > ?', Time.now) }
    scope :past_events, -> { where('event_end_date < ?', Time.now) }
    scope :future_events_spotlight, -> { where('event_end_date > ?', Time.now).limit(5) }
    scope :past_events_spotlight, -> { where('event_end_date < ?', Time.now).limit(5) }

    def self.public_events 
        events = Event.all
        public_events = []
        events.each do |event|
            if(event.event_option.private == false)
                public_events.push(event)
            end 
        end

        return public_events
    end

    def self.private_events
        events = Event.all
        privated_events = []
        events.each do |event|
            if(event.event_option.private == true)
                privated_events.push(event)
            end 
        end
        return privated_events
    end
end

#bug reporting guide for top main site wiki