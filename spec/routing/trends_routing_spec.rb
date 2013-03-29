require "spec_helper"

describe TrendsController do
  describe "routing" do

    it "routes to #index" do
      get("/trends").should route_to("trends#index")
    end

    it "routes to #new" do
      get("/trends/new").should route_to("trends#new")
    end

    it "routes to #show" do
      get("/trends/1").should route_to("trends#show", :id => "1")
    end

    it "routes to #edit" do
      get("/trends/1/edit").should route_to("trends#edit", :id => "1")
    end

    it "routes to #create" do
      post("/trends").should route_to("trends#create")
    end

    it "routes to #update" do
      put("/trends/1").should route_to("trends#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/trends/1").should route_to("trends#destroy", :id => "1")
    end

  end
end
