require "rails_helper"

RSpec.feature "Redirect To Login" do
  scenario "When user hits the root page, it redirects to login" do

    visit root_path

    expect(current_path).to eq '/login'
  end
end
