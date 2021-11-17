require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /index" do
    let!(:users) { create_list(:user, 15) }
    before { get "/users" }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "retunrs an array of serialized users" do
      expect(parsed_body["users"].size).to eq(15)
    end
  end
end
