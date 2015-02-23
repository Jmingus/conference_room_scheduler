require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #profile_page" do
    it "returns http success" do
      get :profile_page
      expect(response).to have_http_status(:success)
    end
  end

end
