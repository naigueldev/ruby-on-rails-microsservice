require "rails_helper"

RSpec.describe TransactionsController, :type => :controller do
  context 'import method' do
    it "should receive file and return status code 200" do
  
      file =  Rack::Test::UploadedFile.new(
        "#{Rails.root}/spec/support/attachments/cnab.txt", 
        "application/txt"
      )
  
      post "import", params: { transaction: { file: file } }
  
      expect(response.status).to eq(200)
    end
  
    it "should result an error when not is a file" do
  
      post "import", params: { transaction: { file: "fake-file" } }
  
      expect(response.status).to eq(400)
    end
  end

end