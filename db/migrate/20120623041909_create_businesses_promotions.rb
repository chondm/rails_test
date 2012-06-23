class CreateBusinessesPromotions < ActiveRecord::Migration
  def change
    create_table :businesses_promotions do |t|
      t.references :promotion
      t.references :business
      t.references :product_bundle
      t.timestamps
    end
  end
end
