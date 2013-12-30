require 'spec_helper'

feature "User creates a new contact inquiry" do
  it "creates a valid contact inquiry" do
    visit '/contacts/new'

    fill_in "First name", with: "Master"
    fill_in "Last name", with: "Kevin"
    fill_in "Email", with: "master.kevin@just-trolling.com"
    fill_in "Subject", with: "Your App SUCKS!"
    fill_in "Description", with: "How disgraceful!"
    click_on "Create Contact"

    expect(page).to have_content "Contact was successfully created"
  end

  it "requires a first name" do
    visit '/contacts/new'

    click_on  "Create Contact"

    expect(page).to have_content "First name can't be blank"
  end
end
