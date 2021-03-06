# frozen_string_literal: true

class EventInvite < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  belongs_to :invitee, class_name: 'User'
  belongs_to :event
end
