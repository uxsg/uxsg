require "rails_helper"

RSpec.describe "routes for update pages", type: :routing do
  it { expect(get: "updates").to route_to "updates#index" }
  it { expect(get: "updates/test-article").to route_to "updates#show", id: "test-article" }
end
