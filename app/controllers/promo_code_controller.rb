class PromoCodeController < ApplicationController

    def new
        @promo_code = PromoCode.new
    end

    def create 
        @prome_code = PromoCode.new(promo_code_params)
        @promo_code.save!
    end
end
