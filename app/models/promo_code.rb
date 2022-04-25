class PromoCode < ApplicationRecord
    belongs_to :reward

    scope :find_code, ->(code) { where('code = ?', code) }

  def self.generate_promo_code 
    promo_code = ""
    6.times do 
        char_number = rand(25) + 97
        promo_code << char_number.chr
    end
    debugger
    if (PromoCode.find_code(promo_code).empty?)
        return promo_code 
    else
        self.generate_promo_code 
    end 
  end
end