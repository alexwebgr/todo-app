require 'rails_helper'

RSpec.describe "Dashboards", type: :request do

  describe "GET /index" do
    it "returns http success" do
      file = fixture_file_upload(Rails.root.join('public', 'apple-touch-icon.png'), 'image/png')

      post "/sessions/do_register", params: { user: { email: 'some@mail.com', full_name: 'my name', avatar: file } }

      get "/dashboard/index"
      expect(response).to have_http_status(:success)
    end
  end

end
