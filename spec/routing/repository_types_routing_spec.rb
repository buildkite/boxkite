require "rails_helper"

RSpec.describe RepositoryTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/repository_types").to route_to("repository_types#index")
    end

    it "routes to #new" do
      expect(get: "/repository_types/new").to route_to("repository_types#new")
    end

    it "routes to #show" do
      expect(get: "/repository_types/1").to route_to("repository_types#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/repository_types/1/edit").to route_to("repository_types#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/repository_types").to route_to("repository_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/repository_types/1").to route_to("repository_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/repository_types/1").to route_to("repository_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/repository_types/1").to route_to("repository_types#destroy", id: "1")
    end
  end
end
