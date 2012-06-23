class BusinessesPromotion < ActiveRecord::Base
  attr_protected :updated_at
  belongs_to :promotion
  belongs_to :business
  belongs_to :product_bundle
  accepts_nested_attributes_for :business, :reject_if => :all_blank , :allow_destroy => true
end
