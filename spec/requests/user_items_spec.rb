require 'rails_helper'

RSpec.describe "UserItems", type: :request do
  describe "GET /user_items" do
    it "works! (now write some real specs)" do
      get user_items_path
      expect(response).to have_http_status(200)
    end
  end
end
