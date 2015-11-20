require "rails_helper"

RSpec.describe UserItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_items").to route_to("user_items#index")
    end

    it "routes to #new" do
      expect(:get => "/user_items/new").to route_to("user_items#new")
    end

    it "routes to #show" do
      expect(:get => "/user_items/1").to route_to("user_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_items/1/edit").to route_to("user_items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_items").to route_to("user_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_items/1").to route_to("user_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_items/1").to route_to("user_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_items/1").to route_to("user_items#destroy", :id => "1")
    end

  end
end
