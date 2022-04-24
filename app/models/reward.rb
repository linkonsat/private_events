class Reward < ApplicationRecord
    belongs_to :user
    has_many :promo_codes
end