class User < ApplicationRecord
  has_many :event_attendees, foreign_key: :attendee_id
  has_many :attendee, through: :event_attendee
  has_many :events, through: :event_attendees
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
