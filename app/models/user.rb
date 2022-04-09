# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, uniqueness: { message: 'Email is already taken. Please select another. ' }
  validates :user_name, uniqueness: { message: 'User name is already taken. Please select another. ' }
  has_many :events
  has_many :event_invites
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
