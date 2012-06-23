class BusinessesProductBundle < ActiveRecord::Base
  attr_protected :updated_at
  belongs_to :business
  belongs_to :product_bundle
end
