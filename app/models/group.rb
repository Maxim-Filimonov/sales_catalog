class Group < ActiveRecord::Base
  attr_accessible :name, :category_id, :description
  belongs_to :category
  has_and_belongs_to_many :products
end
