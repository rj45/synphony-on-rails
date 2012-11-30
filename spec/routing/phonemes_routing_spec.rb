require "spec_helper"

describe PhonemesController do
  describe "routing" do

    it "routes to #index" do
      get("/phonemes").should route_to("phonemes#index")
    end

    it "routes to #new" do
      get("/phonemes/new").should route_to("phonemes#new")
    end

    it "routes to #show" do
      get("/phonemes/1").should route_to("phonemes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/phonemes/1/edit").should route_to("phonemes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/phonemes").should route_to("phonemes#create")
    end

    it "routes to #update" do
      put("/phonemes/1").should route_to("phonemes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/phonemes/1").should route_to("phonemes#destroy", :id => "1")
    end

  end
end
