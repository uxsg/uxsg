require "rails_helper"

feature "landing page" do
  scenario "user visits landing page" do
    visit "/"
    expect(page).to have_content
  end
end
