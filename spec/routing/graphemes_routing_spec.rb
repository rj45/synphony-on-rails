require "spec_helper"

describe GraphemesController do
  describe "routing" do

    it "routes to #index" do
      get("/graphemes").should route_to("graphemes#index")
    end

    it "routes to #new" do
      get("/graphemes/new").should route_to("graphemes#new")
    end

    it "routes to #show" do
      get("/graphemes/1").should route_to("graphemes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/graphemes/1/edit").should route_to("graphemes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/graphemes").should route_to("graphemes#create")
    end

    it "routes to #update" do
      put("/graphemes/1").should route_to("graphemes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/graphemes/1").should route_to("graphemes#destroy", :id => "1")
    end

  end
end
