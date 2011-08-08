require "spec_helper"

describe ItemTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/item_types").should route_to("item_types#index")
    end

    it "routes to #new" do
      get("/item_types/new").should route_to("item_types#new")
    end

    it "routes to #show" do
      get("/item_types/1").should route_to("item_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/item_types/1/edit").should route_to("item_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/item_types").should route_to("item_types#create")
    end

    it "routes to #update" do
      put("/item_types/1").should route_to("item_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/item_types/1").should route_to("item_types#destroy", :id => "1")
    end

  end
end
