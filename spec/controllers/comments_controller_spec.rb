require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  describe "GET #_form.html.erb" do
    it "returns http success" do
      get :_form.html.erb
      expect(response).to have_http_status(:success)
    end
  end

end
