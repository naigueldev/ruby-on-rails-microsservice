require "rails_helper"

RSpec.describe "routes for upload file", :type => :routing do
  it "routes /transactions/import to the upload controller" do
    expect(post("/transactions/import")).to route_to("transactions#import")
  end
end