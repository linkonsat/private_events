# frozen_string_literal: true

class PromoCode < ApplicationRecord
  belongs_to :reward

  scope :find_code, ->(code) { where('code = ?', code) }

  def self.generate_promo_code
    promo_code = ''
    6.times do
      char_number = rand(97..121)
      promo_code << char_number.chr
    end
    if PromoCode.find_code(promo_code).empty?
      promo_code
    else
      generate_promo_code
    end
  end
end
