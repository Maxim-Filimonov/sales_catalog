require 'spec_helper'

describe StoreController do
  describe "#index" do
    it "returns all categories" do
      create_list(:category, 10)
      get 'index'
      assigns(:categories).should have(10).categories
    end
  end
end
