require "spec_helper"

describe "routes for landing page", type: :routing do
  it "routes to home page" do
    expect(get: "/").to route_to "home#index"
  end
end
