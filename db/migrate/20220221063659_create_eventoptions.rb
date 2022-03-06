# frozen_string_literal: true

class CreateEventoptions < ActiveRecord::Migration[7.0]
  def change
    create_table :eventoptions, &:timestamps
  end
end
