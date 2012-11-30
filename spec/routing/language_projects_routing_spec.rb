require "spec_helper"

describe LanguageProjectsController do
  describe "routing" do

    it "routes to #index" do
      get("/language_projects").should route_to("language_projects#index")
    end

    it "routes to #new" do
      get("/language_projects/new").should route_to("language_projects#new")
    end

    it "routes to #show" do
      get("/language_projects/1").should route_to("language_projects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/language_projects/1/edit").should route_to("language_projects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/language_projects").should route_to("language_projects#create")
    end

    it "routes to #update" do
      put("/language_projects/1").should route_to("language_projects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/language_projects/1").should route_to("language_projects#destroy", :id => "1")
    end

  end
end
