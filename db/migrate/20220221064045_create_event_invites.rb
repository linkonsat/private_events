# frozen_string_literal: true

class CreateEventInvites < ActiveRecord::Migration[7.0]
  def change
    create_table :event_invites do |t|
      t.integer :invitee_id
      t.integer :creator_id
      t.foreign_key(:users, column: :invitee_id, primary_key: 'id')
      t.foreign_key(:users, column: :creator_id, primary_key: 'id')
      t.integer :event_id
      t.boolean :accepted
      t.timestamps
    end
  end
end
