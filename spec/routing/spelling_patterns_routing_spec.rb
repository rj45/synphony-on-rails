require "spec_helper"

describe SpellingPatternsController do
  describe "routing" do

    it "routes to #index" do
      get("/spelling_patterns").should route_to("spelling_patterns#index")
    end

    it "routes to #new" do
      get("/spelling_patterns/new").should route_to("spelling_patterns#new")
    end

    it "routes to #show" do
      get("/spelling_patterns/1").should route_to("spelling_patterns#show", :id => "1")
    end

    it "routes to #edit" do
      get("/spelling_patterns/1/edit").should route_to("spelling_patterns#edit", :id => "1")
    end

    it "routes to #create" do
      post("/spelling_patterns").should route_to("spelling_patterns#create")
    end

    it "routes to #update" do
      put("/spelling_patterns/1").should route_to("spelling_patterns#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/spelling_patterns/1").should route_to("spelling_patterns#destroy", :id => "1")
    end

  end
end
