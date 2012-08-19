class Product < ActiveRecord::Base
  attr_accessible :name, :price, :group_ids
  has_and_belongs_to_many :groups
end
