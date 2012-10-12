class Group < ActiveRecord::Base
  attr_accessible :name, :category_id, :description
  belongs_to :category
end
