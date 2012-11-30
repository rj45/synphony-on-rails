require "spec_helper"

describe SentenceWordsController do
  describe "routing" do

    it "routes to #index" do
      get("/sentence_words").should route_to("sentence_words#index")
    end

    it "routes to #new" do
      get("/sentence_words/new").should route_to("sentence_words#new")
    end

    it "routes to #show" do
      get("/sentence_words/1").should route_to("sentence_words#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sentence_words/1/edit").should route_to("sentence_words#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sentence_words").should route_to("sentence_words#create")
    end

    it "routes to #update" do
      put("/sentence_words/1").should route_to("sentence_words#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sentence_words/1").should route_to("sentence_words#destroy", :id => "1")
    end

  end
end
