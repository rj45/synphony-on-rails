require "spec_helper"

describe WordSpellingPatternsController do
  describe "routing" do

    it "routes to #index" do
      get("/word_spelling_patterns").should route_to("word_spelling_patterns#index")
    end

    it "routes to #new" do
      get("/word_spelling_patterns/new").should route_to("word_spelling_patterns#new")
    end

    it "routes to #show" do
      get("/word_spelling_patterns/1").should route_to("word_spelling_patterns#show", :id => "1")
    end

    it "routes to #edit" do
      get("/word_spelling_patterns/1/edit").should route_to("word_spelling_patterns#edit", :id => "1")
    end

    it "routes to #create" do
      post("/word_spelling_patterns").should route_to("word_spelling_patterns#create")
    end

    it "routes to #update" do
      put("/word_spelling_patterns/1").should route_to("word_spelling_patterns#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/word_spelling_patterns/1").should route_to("word_spelling_patterns#destroy", :id => "1")
    end

  end
end
