class BusinessesController < ApplicationController
  
  def populate_product_bundles
  	@business = Business.find_by_id(params[:business_id])
  	respond_to do |format|
      format.html
      format.json { render json: { product_bundles: @business.product_bundles.collect{|b| [b.name,b.id]},
                                   business_retail_price: @business.retail_price,
                                   business_discounted_price: @business.discounted_price
                                  } 
                  }
       format.js
    end
  end
end