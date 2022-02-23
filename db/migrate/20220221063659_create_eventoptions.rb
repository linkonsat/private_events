class CreateEventoptions < ActiveRecord::Migration[7.0]
  def change
    create_table :eventoptions do |t|

      t.timestamps
    end
  end
end
