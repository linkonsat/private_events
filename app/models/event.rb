# frozen_string_literal: true

class Event < ApplicationRecord
  has_many :event_attendees
  has_many :attendees, through: :event_attendees, dependent: :destroy
  has_many :event_tags, dependent: :destroy
  has_one :event_option, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :event_option, :event_tags
  validates :name, :description, :creator, :event_date, :event_end_date, presence: true
  scope :future_events, -> { where('event_end_date > ?', Time.zone.now) }
  scope :past_events, -> { where('event_end_date < ?', Time.zone.now) }
  scope :future_events_spotlight, -> { where('event_end_date > ?', Time.zone.now).limit(5) }
  scope :past_events_spotlight, -> { where('event_end_date < ?', Time.zone.now).limit(5) }
  scope :events_search_creator, ->(creator) { where('creator = ?', creator) }
  def self.public_events
    events = Event.all
    public_events = []
    events.each do |event|
      public_events.push(event) if event.event_option.private == false
    end

    public_events
  end

  def self.private_events
    events = Event.all
    privated_events = []
    events.each do |event|
      privated_events.push(event) if event.event_option.private == true
    end
    privated_events
  end

  def self.keyword_events(keyword)
    events = Event.all 
    keyworded_events = []
    events.each do |event|
      if(event.description.include?(keyword) || event.name.include?(keyword))
        keyworded_events.push(event)
      end
    end
    return keyworded_events
  end 
end
