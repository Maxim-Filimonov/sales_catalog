class Oil < ActiveRecord::Base
  attr_accessible :brand_id, :description, :groups, :name, :oil_variations_attributes
  has_many :oil_variations
  belongs_to :brand
  accepts_nested_attributes_for :oil_variations, reject_if: :all_blank, allow_destroy:true
end
