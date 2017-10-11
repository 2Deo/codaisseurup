require "rails_helper"

describe "Register for event" do
  it "registers a user for an event" do
    visit root_url
    click_on "Register for event"

    expect(page).to have_content "Here you can register for event"
  end
end
