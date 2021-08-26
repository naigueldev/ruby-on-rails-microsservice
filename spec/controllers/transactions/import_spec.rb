require "rails_helper"

RSpec.describe TransactionsController, :type => :controller do
  context 'import method' do
    it "should receive file and return status code 200" do
  
      file =  Rack::Test::UploadedFile.new(
        "#{Rails.root}/spec/support/attachments/cnab.txt", 
        "application/txt"
      )
  
      post "import", params: { transaction: { file: file } }
  
      expect(response).to have_http_status(:ok)
    end
  
  end

end