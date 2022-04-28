# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user_count = 0
event_count = 0
reward_user_count = 0
100.times do
  user_count += 1
  User.create!(user_name: "test user#{user_count}", bio: 'test user', email: "#{user_count}test@gmail.com",
               password: "123456")
end
100.times do 
  reward_user_count += 1
  Reward.create!(user_id: reward_user_count)
end
100.times do
  event_count += 1
  Event.create!(name: 'test event', description: 'A cool test event', creator: "Bill#{event_count}",
                event_date: DateTime.now.to_s, event_end_date: DateTime.new(2023, 2, 3, 4, 5, 6, '+03:00').to_s, user_id: event_count)
  EventOption.create!(maximum_guests: 60, private: false, reoccuring: true, event_id: event_count)
end
