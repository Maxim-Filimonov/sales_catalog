class Oil < ActiveRecord::Base
  attr_accessible :brand_id, :description, :groups, :name, :oil_variations_attributes, :category_ids
  has_many :oil_variations
  belongs_to :brand
  has_and_belongs_to_many :categories

  accepts_nested_attributes_for :oil_variations, reject_if: :all_blank, allow_destroy:true
end
