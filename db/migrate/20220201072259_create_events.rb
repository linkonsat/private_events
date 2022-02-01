class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :creator
      t.string :event_date
      t.string :event_end_date
      t.timestamps
    end
  end
end
