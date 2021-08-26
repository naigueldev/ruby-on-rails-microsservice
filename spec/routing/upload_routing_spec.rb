require "rails_helper"

RSpec.describe "routes for upload file", :type => :routing do
  it "routes /upload to the upload controller" do
    expect(post("/upload")).to route_to("uploads#import")
  end
end