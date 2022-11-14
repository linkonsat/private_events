# frozen_string_literal: true

class EventOption < ApplicationRecord
  has_one :event
  validates :maximum_guests, :reoccuring, presence: true
  validates :private, inclusion: { in: [true, false] }
end
