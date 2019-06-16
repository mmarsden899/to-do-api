require 'rails_helper'

RSpec.describe "Completeds", type: :request do
  describe "GET /completeds" do
    it "works! (now write some real specs)" do
      get completeds_path
      expect(response).to have_http_status(200)
    end
  end
end
