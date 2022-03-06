# frozen_string_literal: true

class CreateEventAttendees < ActiveRecord::Migration[7.0]
  def change
    create_table :event_attendees do |t|
      t.integer :attendee_id
      t.integer :event_id
      t.foreign_key(:users, column: :attendee_id, primary_key: 'id')
      t.foreign_key(:events)
      t.timestamps
    end
  end
end
