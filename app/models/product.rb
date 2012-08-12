class Product < ActiveRecord::Base
  attr_accessible :name, :price
  has_and_belongs_to_many :categories
end
