class ProductBundle < ActiveRecord::Base
  attr_protected :updated_at
  belongs_to :business
end
