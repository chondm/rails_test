class Business < ActiveRecord::Base
  attr_protected :updated_at
  belongs_to :businesses_promotion
  has_many :product_bundles
end
