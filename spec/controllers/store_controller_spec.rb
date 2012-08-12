require 'spec_helper'

describe StoreController do
  describe "#index" do
    it "returns all products" do
      create_list(:product, 10)
      get 'index'
      assigns(:products).should have(10).products
    end
  end
end
