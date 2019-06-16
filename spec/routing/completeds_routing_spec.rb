require "rails_helper"

RSpec.describe CompletedsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/completeds").to route_to("completeds#index")
    end


    it "routes to #show" do
      expect(:get => "/completeds/1").to route_to("completeds#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/completeds").to route_to("completeds#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/completeds/1").to route_to("completeds#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/completeds/1").to route_to("completeds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/completeds/1").to route_to("completeds#destroy", :id => "1")
    end

  end
end
