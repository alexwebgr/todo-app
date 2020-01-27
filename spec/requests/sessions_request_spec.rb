require 'rails_helper'

RSpec.describe "Sessions", type: :request do

  describe "GET /register" do
    it "returns http success" do
      get "/sessions/register"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /do_register" do
    it "returns http success" do
      post "/sessions/do_register", params: { user: { email: 'some@mail.com', full_name: 'my name' } }
      expect(response).to have_http_status(:success)
    end
  end

end
