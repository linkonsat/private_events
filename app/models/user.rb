class User < ApplicationRecord
  has_many :events
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         before_create do |user|
          puts "about to create #{user.user_name}"
        end
    
        after_create :just_created
    
        private
    
        def just_created
          puts "just created a user"
        end
end
