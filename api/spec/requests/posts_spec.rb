require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /index" do
    let!(:posts) { create_list(:post, 25) }

    before { get "/posts"}

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "retunrs an array of serialized posts" do
      expect(parsed_body["posts"].size).to eq(25)
    end
  end

end
