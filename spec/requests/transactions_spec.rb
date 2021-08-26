require 'rails_helper'

RSpec.describe "Transactions", type: :request do
  describe "POST /transactions/import" do
    it "returns http success" do
      post "/transactions/import"
      expect(response).to have_http_status(:success)
    end
  end
end
