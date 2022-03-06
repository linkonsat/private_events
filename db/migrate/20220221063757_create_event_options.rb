# frozen_string_literal: true

class CreateEventOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :event_options do |t|
      t.integer :maximum_guests
      t.boolean :private
      t.boolean :reoccuring
      t.belongs_to :event, foreign_key: true
      t.timestamps
    end
  end
end
