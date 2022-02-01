class AddForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_index :users, :user_name, unique: true
    add_foreign_key :events, :users, column: :creator, primary_key: :user_name 
  end
end
