require "spec_helper"

describe CourrielsController do
  describe "routing" do

    it "routes to #index" do
      get("/courriels").should route_to("courriels#index")
    end

    it "routes to #new" do
      get("/courriels/new").should route_to("courriels#new")
    end

    it "routes to #show" do
      get("/courriels/1").should route_to("courriels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/courriels/1/edit").should route_to("courriels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/courriels").should route_to("courriels#create")
    end

    it "routes to #update" do
      put("/courriels/1").should route_to("courriels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/courriels/1").should route_to("courriels#destroy", :id => "1")
    end

  end
end
