class OilVariation < ActiveRecord::Base
  attr_accessible :price, :volume
  belongs_to :oil
end
