require 'rails_helper'

RSpec.describe "Transactions", type: :request do
  describe "POST /transactions/import" do
    it "returns http success" do
      post "/transactions/import", params: { transaction: { file: nil }}
      expect(response).to have_http_status(:bad_request)
    end
  end
end
