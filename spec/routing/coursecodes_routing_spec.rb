require "rails_helper"

RSpec.describe CoursecodesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/coursecodes").to route_to("coursecodes#index")
    end

    it "routes to #new" do
      expect(:get => "/coursecodes/new").to route_to("coursecodes#new")
    end

    it "routes to #show" do
      expect(:get => "/coursecodes/1").to route_to("coursecodes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/coursecodes/1/edit").to route_to("coursecodes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/coursecodes").to route_to("coursecodes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/coursecodes/1").to route_to("coursecodes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/coursecodes/1").to route_to("coursecodes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/coursecodes/1").to route_to("coursecodes#destroy", :id => "1")
    end

  end
end
