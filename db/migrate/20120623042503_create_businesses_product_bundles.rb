class CreateBusinessesProductBundles < ActiveRecord::Migration
  def change
    create_table :businesses_product_bundles do |t|
      t.references :business
      t.references :product_bundle
      t.timestamps
    end
  end
end
