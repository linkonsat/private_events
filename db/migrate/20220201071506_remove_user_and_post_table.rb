class RemoveUserAndPostTable < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :posts, :users
    drop_table("users")
    drop_table("posts")
  end
end
