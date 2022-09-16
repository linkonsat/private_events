# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PromoCode, type: :model do
  it 'Returns a promocode' do
    promo_code = PromoCode.generate_promo_code
    expect(promo_code).to_not eql(nil)
  end
end
