class ProductBundlesController < ApplicationController
  
  def index
  	@business = Business.find_by_id(params[:business_id])
    @product_bundles = @business.product_bundles
  	respond_to do |format|
      format.html
      format.json { render json: { product_bundles: @product_bundles.collect{|b| [b.name,b.id]},
                                   retail_price: @product_bundles.first.retail_price, 
                                   discounted_price: @product_bundles.first.discounted_price}}
       format.js
    end
  end

  def show
    @product_bundle = ProductBundle.find_by_id(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: { retail_price: @product_bundle.retail_price, discounted_price: @product_bundle.discounted_price}}
       format.js
    end
  end
end