require "spec_helper"

describe SequenceSpellingPatternsController do
  describe "routing" do

    it "routes to #index" do
      get("/sequence_spelling_patterns").should route_to("sequence_spelling_patterns#index")
    end

    it "routes to #new" do
      get("/sequence_spelling_patterns/new").should route_to("sequence_spelling_patterns#new")
    end

    it "routes to #show" do
      get("/sequence_spelling_patterns/1").should route_to("sequence_spelling_patterns#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sequence_spelling_patterns/1/edit").should route_to("sequence_spelling_patterns#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sequence_spelling_patterns").should route_to("sequence_spelling_patterns#create")
    end

    it "routes to #update" do
      put("/sequence_spelling_patterns/1").should route_to("sequence_spelling_patterns#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sequence_spelling_patterns/1").should route_to("sequence_spelling_patterns#destroy", :id => "1")
    end

  end
end
