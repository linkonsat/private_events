class PromoCodeController < ApplicationController

    def new
        @promo_code = PromoCode.new(promo_code_params)
        @promo_code.save!
    end

    def create 
        @prome_code = PromoCode.new(promo_code_params)
        @promo_code.save!
    end

    def promo_code_params
        params.permit(:reward_id, :code, :value_off, :expiration_date)
    end
end
