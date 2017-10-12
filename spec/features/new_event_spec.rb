require "rails_helper"

describe "Create New Event" do
  before do
    visit root_url
    click_on "Create New Event"
    fill_in "new event", with: "Party Time"
  end

  context "when event is too long" do
    it "does not allow the user to create new event" do
      fill_in "new event", with: "long"
      click_on "Create New Event"
      expect(page).to have_content "Event is too long"
    end
  end

  context "when event is short" do
    it "creates a new event for a user" do
      fill_in "new event", with: ""
      click_on "Create New Event"
      expect(page).to have_content "You've create a new event!"
    end
  end
end
