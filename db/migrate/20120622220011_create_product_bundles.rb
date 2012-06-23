class CreateProductBundles < ActiveRecord::Migration
  def change
    create_table :product_bundles do |t|
      t.string :name
      t.references :business
      t.string :retail_price
      t.string :discounted_price
      t.timestamps
    end
  end
end
