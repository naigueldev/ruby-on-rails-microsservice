require "rails_helper"

RSpec.describe "routes for upload file", :type => :routing do
  it "routes /transactions to the upload controller" do
    expect(post("/transactions")).to route_to("transactions#import")
  end
end