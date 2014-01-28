require "spec_helper"

describe YarnsController do
  describe "routing" do

    it "routes to #index" do
      get("/yarns").should route_to("yarns#index")
    end

    it "routes to #new" do
      get("/yarns/new").should route_to("yarns#new")
    end

    it "routes to #show" do
      get("/yarns/1").should route_to("yarns#show", :id => "1")
    end

    it "routes to #edit" do
      get("/yarns/1/edit").should route_to("yarns#edit", :id => "1")
    end

    it "routes to #create" do
      post("/yarns").should route_to("yarns#create")
    end

    it "routes to #update" do
      put("/yarns/1").should route_to("yarns#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/yarns/1").should route_to("yarns#destroy", :id => "1")
    end

  end
end
