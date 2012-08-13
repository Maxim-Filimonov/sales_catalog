class Product < ActiveRecord::Base
  attr_accessible :name, :price, :category_ids
  has_and_belongs_to_many :categories
end
