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
      file = fixture_file_upload(Rails.root.join('public', 'apple-touch-icon.png'), 'image/png')

      post "/sessions/do_register", params: { user: { email: 'some@mail.com', full_name: 'my name', avatar: file } }
      expect(response).to have_http_status(:success)
    end
  end

end
