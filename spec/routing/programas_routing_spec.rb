require "spec_helper"

describe ProgramasController do
  describe "routing" do

    it "routes to #index" do
      get("/programas").should route_to("programas#index")
    end

    it "routes to #new" do
      get("/programas/new").should route_to("programas#new")
    end

    it "routes to #show" do
      get("/programas/1").should route_to("programas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/programas/1/edit").should route_to("programas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/programas").should route_to("programas#create")
    end

    it "routes to #update" do
      put("/programas/1").should route_to("programas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/programas/1").should route_to("programas#destroy", :id => "1")
    end

  end
end
