require "spec_helper"

describe OilsController do
  describe "routing" do

    it "routes to #index" do
      get("/oils").should route_to("oils#index")
    end

    it "routes to #new" do
      get("/oils/new").should route_to("oils#new")
    end

    it "routes to #show" do
      get("/oils/1").should route_to("oils#show", :id => "1")
    end

    it "routes to #edit" do
      get("/oils/1/edit").should route_to("oils#edit", :id => "1")
    end

    it "routes to #create" do
      post("/oils").should route_to("oils#create")
    end

    it "routes to #update" do
      put("/oils/1").should route_to("oils#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/oils/1").should route_to("oils#destroy", :id => "1")
    end

  end
end
