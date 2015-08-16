require "rails_helper"

RSpec.describe TherapistsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/therapists").to route_to("therapists#index")
    end

    it "routes to #new" do
      expect(:get => "/therapists/new").to route_to("therapists#new")
    end

    it "routes to #show" do
      expect(:get => "/therapists/1").to route_to("therapists#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/therapists/1/edit").to route_to("therapists#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/therapists").to route_to("therapists#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/therapists/1").to route_to("therapists#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/therapists/1").to route_to("therapists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/therapists/1").to route_to("therapists#destroy", :id => "1")
    end

  end
end
