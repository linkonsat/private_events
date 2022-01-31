class Events < ActiveRecord::Migration[7.0]
  def change 
    create_table :events do |t|
    t.text :event_time
    t.text :preview
    t.text :title
    t.text :description
    t.timestamps
    end
  end
end
