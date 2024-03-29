# frozen_string_literal: true

class AddRewardToUser < ActiveRecord::Migration[7.0]
  def change
    create_table :rewards do |t|
      t.belongs_to :user, foreign_key: true
    end
  end
end
