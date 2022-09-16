# frozen_string_literal: true

class CreateEventTags < ActiveRecord::Migration[7.0]
  def change
    create_table :event_tags do |t|
      t.string :name
      t.belongs_to :event, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
