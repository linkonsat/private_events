class CreateEventOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :event_options do |t|

      t.timestamps
    end
  end
end
