class AddPromoCodeToRewards < ActiveRecord::Migration[7.0]
  def change
    create_table :promo_codes do |t|
      t.belongs_to :reward, foreign_key: true
      t.string :code 
      t.decimal :value_off
      t.timestamps
    end
  end
end
