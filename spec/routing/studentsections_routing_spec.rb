require "rails_helper"

RSpec.describe StudentsectionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/studentsections").to route_to("studentsections#index")
    end

    it "routes to #new" do
      expect(:get => "/studentsections/new").to route_to("studentsections#new")
    end

    it "routes to #show" do
      expect(:get => "/studentsections/1").to route_to("studentsections#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/studentsections/1/edit").to route_to("studentsections#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/studentsections").to route_to("studentsections#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/studentsections/1").to route_to("studentsections#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/studentsections/1").to route_to("studentsections#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/studentsections/1").to route_to("studentsections#destroy", :id => "1")
    end

  end
end
