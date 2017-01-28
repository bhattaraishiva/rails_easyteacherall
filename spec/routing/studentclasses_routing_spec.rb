require "rails_helper"

RSpec.describe StudentclassesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/studentclasses").to route_to("studentclasses#index")
    end

    it "routes to #new" do
      expect(:get => "/studentclasses/new").to route_to("studentclasses#new")
    end

    it "routes to #show" do
      expect(:get => "/studentclasses/1").to route_to("studentclasses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/studentclasses/1/edit").to route_to("studentclasses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/studentclasses").to route_to("studentclasses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/studentclasses/1").to route_to("studentclasses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/studentclasses/1").to route_to("studentclasses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/studentclasses/1").to route_to("studentclasses#destroy", :id => "1")
    end

  end
end
