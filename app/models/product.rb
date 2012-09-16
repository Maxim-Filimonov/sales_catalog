class Product < ActiveRecord::Base
  attr_accessible :name, :price, :group_ids, :brand_id, :description
  has_and_belongs_to_many :groups
  belongs_to :brand
end
