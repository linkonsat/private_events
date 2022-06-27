# frozen_string_literal: true

class EventOption < ApplicationRecord
  has_one :event
  validates :maximum_guests, :private, :reoccuring, presence: true
end
