class Promotion < ActiveRecord::Base
  attr_protected :updated_at
  has_many :businesses, :through => :businesses_promotions
  has_many :businesses_promotions, :order => "created_at"
  validates :name, :presence => true, :length => {:minimum => 1, :maximum => 30}
  accepts_nested_attributes_for :businesses_promotions, :reject_if => :all_blank , :allow_destroy => true
end
