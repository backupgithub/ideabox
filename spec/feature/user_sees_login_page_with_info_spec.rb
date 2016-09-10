require "rails_helper"

RSpec.feature "User sees login page" do
  scenario "contains welcome message" do
    visit login_path

    expect(page).to have_content "Welcome"
  end
end
