require 'rails_helper'

RSpec.describe RoomsController, type: :controller do

  describe "GET #room_display" do
    it "returns http success" do
      get :room_display
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #room_show" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
